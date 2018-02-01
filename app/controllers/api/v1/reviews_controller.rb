class Api::V1::ReviewsController < ApiController

  def create
    superpower = Superpower.find(params[:superpower_id])
    parsed_review = JSON.parse(request.body.read)
    review = Review.new(rating: parsed_review["rating"], body: parsed_review["body"])
    review.user = current_user
    review.superpower = superpower

    if current_user.nil?
      render status: 401
    elsif review.save
      flash[:notice] = 'Review Added Successfully'
      render json: superpower.reviews
    else
      flash[:alert] = review.errors.full_messages.join(", ")
      render json: superpower.reviews
    end
  end
end
