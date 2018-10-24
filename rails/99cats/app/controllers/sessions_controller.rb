class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_credential(params[:session][:username], params[:session][:password])
    if user.nil?
      render json: 'Credential were wrong'
    else
    user.reset_session_token
    flash[:success] = "Welcome back #{user.username}!"
    redirect_to cats_path
    end
  end
end
