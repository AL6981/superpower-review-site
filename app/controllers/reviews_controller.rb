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
    # binding.pry
    # @superpower = Superpower.find(params[:superpower_id])
    # @review = @superpower.review
    @review = Review.find(params[:superpower_id])


  end

  def update
    # @superpower = Superpower.find(params[:superpower_id])
    # @review = @superpower.review
    @review = Review.find(params[:superpower_id])


    if @review.update_attributes(review_params)
      flash[:notice] = 'Review Updated Successfully'
      redirect_to superpower_path(@superpower)
    else
      flash[:alert] = @review.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
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
