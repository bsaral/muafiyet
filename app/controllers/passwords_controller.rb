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

    respond_to do |format|
      if @password.save
        format.html { redirect_to @password, notice: 'Password was successfully created.' }
        format.json { render json: @password, status: :created, location: @password }
        
      else
        format.html { render action: "new" }
        format.json { render json: @password.errors, status: :unprocessable_entity }
      end
    end
    
    @user.update_attribute(:password, @password.new_password)
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
