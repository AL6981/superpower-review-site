class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @superpower = Superpower.find(params[:superpower_id])
    @review = Review.new
  end

  def create
    @superpower = Superpower.find(params[:superpower_id])
    @review = Review.new(review_params)

    if @review.save
      flash[:notice] = 'Review Added Successfully'
      redirect_to superpower_path(@superpower)
    else
      flash[:alert] = @review.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @superpower = Superpower.find(params[:superpower_id])
    @review = @superpower.review

  end

  def update
    @superpower = Superpower.find(params[:superpower_id])
    @review = @superpower.review

    if @review.update_attributes(review_params)
      flash[:notice] = 'Review Updated Successfully'
      redirect_to superpower_path(@superpower)
    else
      flash[:alert] = @review.errors.full_messages.join(", ")
      render :edit
    end
  end

  def delete
    @superpower = Superpower.find(params[:superpower_id])
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to superpower_path(@superpower)

  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
