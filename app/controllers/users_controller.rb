class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save # Returns truthy value on success
      flash[:notice] = 'User was successfully created.'
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:error] = 'Could not create user.'
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
