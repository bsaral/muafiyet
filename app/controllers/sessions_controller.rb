class SessionsController < ApplicationController
 def new
    redirect_to deneme_index_path if session[:user_id]
 end

 def create
    user = User.find_by_username(params[:username])
	
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        user.update_attribute(:userlogin, Time.now)
              case user.role
              when "student"
				redirect_to ("/update")
              when "admin"
                redirect_to ("/admin")
              end
         
    else
        flash[:error] = "Kullanici adin ve/veya parolan hatali"
        redirect_to root_url
	end
 end
 
 def update
	@user = User.find_by_id(session[:user_id])
	@password = Password.new(params[:new_password])
	
	
		
	if @password.new_password == @password.new_password_confirmation
		
		@user.update_attribute(:password, @password.new_password)
		@user.update_attribute(:password_confirmation, @password.new_password_confirmation)
		
	else
		flash[:error] = "guncellenmedi"
	end
		
	
	
 end
 
 

 def destroy
 
    session[:user_id] = nil
    redirect_to root_url
 
 end
 
end
