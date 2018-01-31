class Api::V1::ReviewsController < ApiController

  def index
    render json: Review.all
  end

  # def show
  #   render json: Review.find(params[:id])
  # end

  # def new
  #   render json: Superpower.find(params[:superpower_id])
  #   render json: Review.new
  # end

  def create
    superpower = Superpower.find(params[:superpower_id])
    parsed_review = JSON.parse(request.body.read)
    review = Review.new(rating: parsed_review["rating"], body: parsed_review["body"])

    # review = Review.new(review_params)
    review.user = current_user
    review.superpower = superpower

    if current_user.nil?
      render status: 401
    elsif review.save
      # binding.pry
      flash[:notice] = 'Review Added Successfully'
      render json: superpower.reviews
    else
      flash[:alert] = review.errors.full_messages.join(", ")
      render json: superpower.reviews
    end
  end

  protected

  # def review_params
  #   review = JSON.parse(request.body.read)
  #   rating = review["rating"]
  #   body = review["body"]
  #   params.require(:review).permit(:rating, :body)
  # end
end
