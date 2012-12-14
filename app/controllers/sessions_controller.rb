# encoding: utf-8
class SessionsController < ApplicationController
 def new
    redirect_to deneme_index_path if session[:user_id]
 end

 def create
    user = User.find_by_username(params[:username])

    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        @password_id = Password.find_by_userid(session[:user_id])
        @find = Anket.find_by_userid(session[:user_id])
        user.update_attribute(:userlogin, Time.now)
        if user.role == "student" && @password_id == nil
		redirect_to ("/password")
	end
	if user.role == "student" && @password_id != nil
		unless @find.answer == nil 
			redirect_to ("/ankets/:id")
		else
			redirect_to ("/anket")
		end
	end
        if user.role == "admin"
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
