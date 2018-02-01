class ReviewsController < ApplicationController
  before_action :authorize_user?, only: [:edit, :update, :destroy]

  def edit
    @review = Review.find(params[:id])
    @superpower = @review.superpower
  end

  def update
    @review = Review.find(params[:id])
    @superpower = @review.superpower

    if @review.update_attributes(review_params)
      flash[:notice] = 'Review Updated Successfully'
      redirect_to "/superpowers/#{@superpower.id}"
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

    redirect_to "/superpowers/#{@superpower.id}"
  end

  private

  def authorize_user?
     @review = Review.find(params[:id])
     @superpower = @review.superpower

    if !user_signed_in? || current_user != @review.user
      flash[:notice] = 'Unauthorized access'
      redirect_to superpower_path(@superpower) and return
    end
  end

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
