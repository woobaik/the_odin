class SessionsController < ApplicationController
  before_action :redirect, only: [:new]
  def new

  end

  def create
    user = User.find_by_credential(params[:session][:username], params[:session][:password])
    if user.nil?
      render json: 'Credential were wrong'
    else
    user.reset_session_token
    login!(user)
    flash[:success] = "Welcome back #{user.username}!"
    redirect_to cats_path
    end
  end

  def destroy
    current_user.reset_session_token if current_user
    session[:session_token] = nil
    current_user = nil
    redirect_to new_session_path
  end


end
