class Api::V1::SuperpowerController < ApiController
  def show
    @superpower = Superpower.find(params[:id])
    render json: {
      superpower: @superpower,
      reviews: @superpower.reviews
    }
  end
end
