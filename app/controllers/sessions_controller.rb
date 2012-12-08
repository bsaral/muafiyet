class SessionsController < ApplicationController
 def new
    redirect_to deneme_index_path if session[:user_id]
 end

 def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
              case user.role
              when "student"
<<<<<<< HEAD
                redirect_to ("/deneme")
=======
                redirect_to ("/anket")
>>>>>>> ccc9dd137e36e4a3d59714e530e7be707223c04d
              when "admin"
                redirect_to ("/admin")
              end
         
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
