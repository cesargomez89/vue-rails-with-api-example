module V1
  class BaseController < ActionController::API
    before_action :find_user, only: [:show, :edit, :destroy, :update]
  end
end
