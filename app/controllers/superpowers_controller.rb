class SuperpowersController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @superpower = Superpower.new
  end

  def create
    @user = User.find(params[:user_id])
    @superpower = Superpower.new(superpower_params)
    @superpower.user_id = @user
    
    if @superpower.save
      flash[:notice] = 'Superpower added successfully'
      redirect_to user_superpower_path(@user)
    else
      render :new
    end
  end

  protected

  def superpower_params
    params.require(:superpower).permit(:name, :description, :user_id)
  end

end
