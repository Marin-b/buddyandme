class FriendsController < ApplicationController
  def new
    @friend = Friend.new
  end

  def create
    a_hash = set_params
    a_hash["user_id"] = current_user.id
    @friend = Friend.new(a_hash)
    if @friend.save
      redirect_to new_friend_photo(current_user)
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:friend).permit(:large_description, :location, :price_per_day)
  end
end
