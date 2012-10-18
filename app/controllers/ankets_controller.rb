class AnketsController < ApplicationController

  def index
	@anket = Anket.all
  
  end
  
  def show
	@anket = Anket.find(params[:id])
	
  end
  
  def update
	redirect_to("/anket")
  
  end
  
end
