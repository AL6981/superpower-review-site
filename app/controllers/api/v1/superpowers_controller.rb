class Api::V1::SuperpowersController < ApiController

  def index
    render json: Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
    render json: {
      superpower: @superpower,
      reviews: @superpower.reviews
    }
  end
end
