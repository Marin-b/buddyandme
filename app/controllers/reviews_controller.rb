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

    if @friendship.user_id == current_user.id && @friendship.status == "Completed"
      @review.friendship_id = @friendship.id
      if @review.save
        redirect_to friend_path(@friendship.friend_id)
      else
        render :new
      end
    else
      flash[:alert] = "You're not allowed to write this review!"
      redirect_to friend_path(@friendship.friend_id)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
