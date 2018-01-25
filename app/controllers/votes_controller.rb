class VotesController < ApplicationController
  def create
    @vote = Vote.new(secure_params)
    @vote.review = Review.find(params[:review_id])
    @vote.user = current_user
    if @vote.save
        render 'superpowers/show'
    else
      flash[:alert] = "You can only vote once!"
      render 'superpowers/show'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
  end

  private
    def secure_params
      params.require(:vote).permit(:user)
    end
end
