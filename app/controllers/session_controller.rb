class SessionController < ApplicationController
  def new
    # This is the action for user login. The view will have the login form template.
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id # Remember the user id from this moment on
      redirect_to root_path # Change this to contacts_path later
    else
      flash[:error] = "Invalid email address or password"
      redirect_to login_path # we don't render on failure bacause we don't want to help a hacker
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path # changed from login_path
  end
end
