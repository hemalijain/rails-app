class LoginController < ApplicationController
	 def login
    if params[:name]=="admin" && params[:password]=="admin"
 session[:loggedin_user]=101

      redirect_to :projs

    end
    if params[:name]=="project manager" && params[:password]=="project manager"
      session[:loggedin_user]=102
      redirect_to :projs
end
  @users = User.all
 @users.each do |user|
    

    if params[:name]==user.name && params[:password]==user.password
       session[:loggedin_user]=user.id
      redirect_to :projs
    
    
    end
  end
end
end
