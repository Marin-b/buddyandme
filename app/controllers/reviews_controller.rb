class ReviewsController < ApplicationController
  def new
    @friendship = Friendship.find(params[:friendship_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @friendship = Friendship.find(params[:friendship_id])

    # 1. if the status of the friendship is completed, then the user is able to write a review
    # 2 check if the user actually is the user that also was part fo fthat friendhsip

    if @friendship.user_id == current_user.id && @friendship.status == "completed"
      @review.friendship_id = @friendship.id
      if @review.save
        redirect_to profile_path
      else
        render :new
      end
    else
      flash[:alert] = "wegwezen jij"
      redirect_to profile_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
