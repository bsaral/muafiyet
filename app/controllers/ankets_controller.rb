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
	
	Anket.create(:answer => @anket.answer, :name => @student.username)
	
  end
  
  
  def admin 
	@anket = Anket.all
	
  end
  
  
end
