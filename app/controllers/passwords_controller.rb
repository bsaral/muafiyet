class PasswordsController < ApplicationController
  
  def new
    @password = Password.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @password }
    end
  end

  def create
    @password = Password.new(params[:password])
    @user = User.find_by_id(session[:user_id])
    @password_id = Password.find_by_userid(session[:user_id])
    
    respond_to do |format|
      if @password.save
        format.html { redirect_to ("/anket"), notice: 'Password was successfully created.' }
        format.json { render json: ("/anket"), status: :created, location: @password }
        
      else
        format.html { render action: "new" }
        format.json { render json: @password.errors, status: :unprocessable_entity }
      end
    end
    
    if @password_id == nil
    
		Password.create( 
		
			:userid => @user.id,
			:new_password => @password.new_password,
			:new_password_confirmation => @password.new_password_confirmation
		)
		
		@user.update_attribute(:password, @password.new_password)
	
	end
		
  end


  def destroy
    @password = Password.find(params[:id])
    @password.destroy

    respond_to do |format|
      format.html { redirect_to passwords_url }
      format.json { head :no_content }
    end
  end
end
