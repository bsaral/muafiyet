class AnketsController < ApplicationController

  @@time_finish = Time.zone.parse("2013-01-21 14:09 ") #anket süresi
  @@exam_date = Time.zone.parse("2013-02-16 12:00 ") #sınav tarihi
  
  def index
	@ankets = Anket.all
	@student = User.find(session[:user_id])
	@find = Anket.find_by_userid(@student.id)
	
	if @student.userlogin >= @@time_finish
		if @find == nil
			redirect_to ("/finish_sec")
		else
			if @find.answer == "EVET"
				redirect_to ("/kimlik")
			else
				redirect_to ("/finish_sec")
			end
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
	end
	
	if @anket.id == 2 
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
		if @student.userlogin >= @@time_finish or Time.now >= @@time_finish
			if @find.answer == "EVET"
				redirect_to ("/show_sec")
			else
				redirect_to ("/finish_sec")
			end
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
  
  def show_sec
	@student = User.find(session[:user_id])
	@find = Anket.find_by_userid(session[:user_id])
	@find.update_attribute(:time, Time.now)
	if @student.userlogin >= @@time_finish or Time.now >= @@time_finish
		if @find.answer == "EVET"
			redirect_to ("/kimlik")
		else
			redirect_to ("/finish_sec")
		end
	end
	
  end
  
  
  def admin 
	@anket = Anket.all
	@time_finish = @@time_finish
	
  end
  
  
  def dagitim
	@anket = Anket.all
	@kimlik = Identity.all
	@class = Classname.all.shuffle
	@anket.each do |anket|
		@student2 = User.find_by_username(anket.name)
		@find2 = Identity.find_by_name(anket.name)
		if @find2 == nil and anket.answer == "EVET"
			@class.each do |idc|
				Identity.create(
					name: anket.name,
					no: @student2.okulno,
					schname: idc.schoolname,
					clsname: idc.classname,
					flat: idc.floor,
					exmdate: idc.examdate,
					exmdesk: idc.desk,
					ttldesk: idc.totaldesk
			    )
			 
			end
		end
	 end
  end
  
  def kimlik
	@student = User.find(session[:user_id])
	@kart = Identity.find_by_name(@student.username)
	unless @kart != nil
		redirect_to("/finish")
	end
  end
  
end
