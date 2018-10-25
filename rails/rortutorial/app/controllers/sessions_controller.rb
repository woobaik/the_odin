class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.is_password?(params[:session][:password])
      login!(user)
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash[:danger] ="Invalid password/password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
