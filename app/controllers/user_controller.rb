class UserController < ApplicationController
  before_action :logged_in_user, only: [:show]
  def new
    @user = User.new
  end

  def show
    @user = current_user
    @level = Level.find(@user.level)
  end
  def create
    @user  = User.new(user_params)
    if @user.save
      log_in @user
      flash[:sucess] = "Welcome to Quiz World!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :college,
                                   :phone, :password)
    end

    def logged_in_user
      if !logged_in?
        redirect_to root_url
        flash[:danger] = 'Login First'
      end
    end
end
