class SuperpowersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user, except: [:index, :show]

  def index
    @superpowers = Superpower.all
  end


  def show
    @superpower = Superpower.find(params[:id])
    @reviews = @superpower.reviews
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

  def destroy
    Superpower.find(params[:id]).destroy
    flash[:success] = 'Superpower successfully deleted'
    redirect_to superpowers_path
  end

  protected

  def superpower_params
    params.require(:superpower).permit(:name, :description)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
