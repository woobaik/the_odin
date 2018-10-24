class UsersController < ApplicationController

  before_action :redirect, only: [:new]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to root_path
    else
      flash[:fail] = "Failed to Sign Up"
      render 'new'
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
