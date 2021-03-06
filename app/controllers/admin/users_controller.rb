module Admin
  class UsersController < ApplicationController
    before_action :authorize_user

    def index
      @users = User.all
    end

    def destroy
      User.find(params[:id]).destroy
      flash[:success] = 'Success'
      redirect_to admin_users_path
    end

    protected

    def authorize_user
      if !user_signed_in? || !current_user.admin?
        raise ActionController::RoutingError.new("Not Found")
      end
    end
  end
end
