class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @superpower = Superpower.find(params[:superpower_id])
    @review = Review.new
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

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @superpower = @review.superpower

    if @review.update_attributes(review_params)
      flash[:notice] = 'Review Updated Successfully'
      redirect_to superpower_path(@superpower)
    else
      flash[:alert] = @review.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @superpower = @review.superpower

    @review.destroy
    flash[:notice] = 'Review deleted'

    redirect_to superpower_path(@superpower)
  end

  private

  def authorize_user
     @review = Review.find(params[:id])
     @superpower = @review.superpower

    if !user_signed_in? || current_user != review.user
      flash[:notice] = 'Unauthorized access'
      redirect_to superpower_path(@superpower)
    end
  end
  
  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
