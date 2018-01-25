class SuperpowersController < ApplicationController
  before_action :authenticate_user!

  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
  end
end
