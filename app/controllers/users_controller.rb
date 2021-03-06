class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      fail
    end 
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:email,:name,:password_digest,:birthday)
  end
  
end
