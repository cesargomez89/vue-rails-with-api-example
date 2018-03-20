module V1
  class UsersController < BaseController
    def index
      @users = User.all
    end

    def show
    end

    def create
      @user = User.new(user_params)
      save_user(:new)
    end

    def destroy
      if  @user.destroy
        render json: {message: 'User deleted successfully'}, status: :ok
      end
    end

    def update
      save_user(:edit)
    end

    private

    def save_user(action)
      if @user.save
        render :show
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
end
