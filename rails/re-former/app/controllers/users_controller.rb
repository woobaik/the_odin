class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to new_user_path
    else
      render :edit
    end
  end


  private

  def user_params
    # create_table "users", force: :cascade do |t|
    #   t.string "username"
    #   t.string "email"
    #   t.string "password_digest"
    params.require(:user).permit(:username, :email, :password)
  end
end