class AnketsController < ApplicationController
  def index
	@anket = Anket.all
  
  end
end
