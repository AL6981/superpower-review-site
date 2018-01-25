class VotesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @vote = Vote.new
    @vote.review = @review
    @vote.user = current_user
    @superpower = @review.superpower
    @reviews = @superpower.reviews


    if !@vote.save
      flash[:alert] = "You can only vote once!"
    end
  end

  def destroy
    if Vote.count > 0
      @vote = Vote.last
      @vote.destroy
    end
  end

  private
    def secure_params
      params.require(:vote).permit(:review, :user)
    end
    #need to pass this in to making a new Vote, after building a form submit button. Where does react come into play?
end
