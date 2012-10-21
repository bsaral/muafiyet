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
	
	Anket.create(:userid => @student.id, :answer => @anket.answer, :name => @student.username)
	@ankets = Anket.find_by_id(@student.id)
	unless @ankets.id.nil?
		@ankets.answer=@anket.answer
		@ankets.save
	end
	
	
		
	
  end
  
  
  def admin 
	@anket = Anket.all
	
  end
  
  
end
