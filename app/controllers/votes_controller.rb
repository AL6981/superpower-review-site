class VotesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @vote = Vote.new
    @vote.review = @review
    @vote.user = current_user
    @superpower = @review.superpower
    @reviews = @superpower.reviews


    if @vote.save
    else
      flash[:alert] = "You can only vote once!"
    end
  end

  def destroy
    @vote = Vote.last
    @vote.destroy
  end

  private
    def secure_params
      params.require(:vote).permit(:review, :user)
    end
end
