class AnketsController < ApplicationController
  

  def index
	@ankets = Anket.all
	@student = User.find(session[:user_id])
	@find = Anket.find_by_userid(@student.id)
	
	@time_finish = Time.zone.parse("2012-12-11 11:19 ")
	#@time_finish = Time.zone.parse("2012-12-18 22:34 ")
	if @student.userlogin >= @time_finish
		if @find == nil
			redirect_to ("/finish_sec")
		else 
			redirect_to ("/finish")
		end
	end
	
  end
  
  def show
	@anket = Anket.new
	@anket.id = params[:id]
	@student = User.find(session[:user_id])
	@anket.name = @student.username
	
	if @anket.id == 1
		@anket.answer = "EVET"
	
	else 
		@anket.answer = "HAYIR"
	end
	
	@find = Anket.find_by_userid(@student.id)
	
	if @find == nil
	
		Anket.create(
			userid: @student.id, 
			answer: @anket.answer, 
			name: @student.username,
			time: Time.now
		)
		
	else
	    @find.update_attribute(:time, Time.now)
		@time_finish = Time.zone.parse("2012-12-11 11:19 ")
	    #@time_finish = Time.zone.parse("2012-12-18 22:34 ")
		if @student.userlogin >= @time_finish or Time.now >= @time_finish
			redirect_to ("/finish")
		else
			@find.update_attribute(:answer, @anket.answer)
			@find.update_attribute(:time, Time.now)
		end
	end
  end
  
  def finish
	@student = User.find(session[:user_id])
	@find = Anket.find_by_userid(@student.id)
  end
  
  
  def admin 
	@anket = Anket.all
	
  end
  
end
