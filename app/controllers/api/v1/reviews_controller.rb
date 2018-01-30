class Api::V1::PostsController < ApplicationController
  def index
    render json: {Review.all}
  end

  def show
    render json: {Review.find(params[:id])}
  end

  def new
    render json: Superpower.find(params[:superpower_id])
    render json: Review.new
  end

  def create
    @superpower = Superpower.find(params[:superpower_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.superpower = @superpower

    if @review.save
      flash[:notice] = 'Review Added Successfully'
      redirect_to superpower_path(@superpower)
    else
      flash[:alert] = @review.errors.full_messages.join(", ")
      render :new
    end
  end
end
