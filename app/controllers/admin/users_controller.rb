module Admin
  class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def destroy

      User.find(params[:id]).destroy
      flash[:success] = 'Success'
      redirect_to admin_users_path
    end
  end
end
