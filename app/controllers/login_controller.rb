class LoginController < ApplicationController
	def login
    if params[:name]=="admin" && params[:password]=="admin"
      session[:loggedin_user]=101
    end
    if params[:name]=="project manager" && params[:password]=="project manager"
      session[:loggedin_user]=102
    end
    @users = User.all
    @users.each do |user|
      if params[:name]==user.name && params[:password]==user.password
         session[:loggedin_user]=user.id      
      end    
    end
    redirect_to :projs
  end
end
