class AnketsController < ApplicationController

  def index
	@anket = Anket.all
  
  end
  
  def show
	@anket = Anket.find(params[:id])
	
  end
  
  def admin 
	@anket = Anket.all
  
  end
  
  
end
