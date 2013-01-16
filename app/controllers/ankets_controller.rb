class AnketsController < ApplicationController
  
  @@time_finish = Time.zone.parse("2013-01-16 16:00 ") #anket süresi
  #@@time_finish = Time.zone.parse("2012-12-18 13:34 ")
  @@exam_date = Time.zone.parse("2013-02-16 12:00 ") #sınav tarihi
  
  def index
	@ankets = Anket.all
	@student = User.find(session[:user_id])
	@find = Anket.find_by_userid(@student.id)
	
	if @student.userlogin >= @@time_finish
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
  
  def show_sec
	@student = User.find(session[:user_id])
	@find = Anket.find_by_userid(session[:user_id])
	@find.update_attribute(:time, Time.now)
	if @student.userlogin >= @@time_finish or Time.now >= @@time_finish
		redirect_to ("/finish")
	end
	
  end
  
  
  def admin 
	@anket = Anket.all
	@kimlik = Identity.all
	@anket.each do |anket|
		@student2 = User.find_by_username(anket.name)
		@class =Classname.find(:all, :limit => 1,  :order => 'rand()')
		@find2 = Identity.find_by_name(anket.name)
		if @find2 == nil and anket.answer == "EVET"
			Identity.create(
				name: anket.name,
				no: @student2.okulno
			)
			@class.each do |idc|
				Identity.create(
				schname: idc.schoolname,
				clsname: idc.classname,
				flat: idc.floor,
				exmdate: idc.examdate,
				exmdesk: idc.desk
			    )
			end
		end
	 end
  end
  
  
  def dagitim
	@class =Classname.find(:all, :limit => 1, :order => 'rand()')
	@kimlik = Identity.all
	
  end
  
  def kimlik
  
  end
  
end
