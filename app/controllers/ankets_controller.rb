class AnketsController < ApplicationController

  def index
	@anket = Anket.all
  
  end
  
  def show
	@anket = Anket.find(params[:id])
	
  end
  
  
end
