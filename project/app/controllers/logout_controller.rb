class LogoutController < ApplicationController
  def logout
    session[:loggedin_user]=""
  end
end