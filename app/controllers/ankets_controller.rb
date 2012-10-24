class AnketsController < ApplicationController

  def index
	@ankets = Anket.all
  
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
		Anket.create(:userid => @student.id, :answer => @anket.answer, :name => @student.username)
	
	
	else
		@find.update_attribute(:answer, @anket.answer)
		
	end
	
  end
  
  
  def admin 
	@anket = Anket.all
	
  end
  
  
end
