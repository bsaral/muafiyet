class SessionsController < ApplicationController
 def new
    redirect_to deneme_index_path if session[:user_id]
 end

 def create
    user = User.find_by_username(params[:username])
	
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        @password_id = Password.find_by_userid(session[:user_id])
        user.update_attribute(:userlogin, Time.now)
<<<<<<< HEAD
              case user.role
              when "student"
<<<<<<< HEAD
<<<<<<< HEAD
                redirect_to ("/deneme")
=======
=======
				
>>>>>>> da139b698b36f297658da8bcc08bf0db756d0a4f
                redirect_to ("/anket")
>>>>>>> ccc9dd137e36e4a3d59714e530e7be707223c04d
              when "admin"
                redirect_to ("/admin")
              end
=======
        if user.role == "student" && @password_id == nil
			redirect_to ("/password")
		end
		if user.role == "student" && @password_id != nil
			redirect_to ("/anket")
		end
        if user.role == "admin"
            redirect_to ("/admin")
        end
>>>>>>> fa38bf7055b05e2d0a5f3c3cd2a7415701d69ce0
         
    else
        flash[:error] = "Kullanici adin ve/veya parolan hatali"
        redirect_to root_url
	end
 end
 
 
 def destroy
 
    session[:user_id] = nil
    redirect_to root_url
 
 end
 
end
