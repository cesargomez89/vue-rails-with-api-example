class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :destroy, :update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    save_user(:new)
  end

  def destroy
    if  @user.destroy
      redirect_to action: :index
    end
  end

  def update
    save_user(:edit)
  end

  private

  def save_user(action)
    if @user.save
      redirect_to action: :index
    else
      render action
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
