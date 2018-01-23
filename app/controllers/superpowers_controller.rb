class SuperpowersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def show
    @superpower = Superpower.find(params[:id])
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_params)
    @superpower.user = current_user

    if @superpower.save
      flash[:notice] = 'Superpower added successfully'
      redirect_to superpower_path(@superpower)
    else
      render :new
    end
  end

  def edit
    @superpower = Superpower.find(params[:id])
  end

  def update
    @superpower = Superpower.find(params[:id])

    if @superpower.update_attributes(superpower_params)
      flash[:notice] = 'Superpower successfully updated'
      redirect_to superpower_path(@superpower)
    else
      render :edit
    end
  end
  
  protected

  def superpower_params
    params.require(:superpower).permit(:name, :description)
  end

end
