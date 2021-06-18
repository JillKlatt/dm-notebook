class UsersController < ApplicationController

  def new
      @user = User.new
  end

  def create
    #   byebug
      @user = User.new(user_params)
      if @user.save
          flash[:message] = "Let's get creating!"
          session[:user_id] = @user.id 
          redirect_to '/'
      else
          render :new
      end
  end

  private

  def user_params
      params.require(:user).permit(:name, :username, :password, :email)
  end

end