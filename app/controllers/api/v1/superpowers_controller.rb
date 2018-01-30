class Api::V1::SuperpowersController < ApplicationController

  def index
    render json: Superpower.all
  end

  def show
    render json: Superpower.find(params[:id])
  end

end
