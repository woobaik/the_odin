class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:session][:username])


    if user == User.find_by(email: params[:session][:email])
      flash[:success] = "You have successfully logged in!"
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:warning] = "You have entered wrong username, email combination."
      render :new
    end
  end

  def destroy

  end
end
