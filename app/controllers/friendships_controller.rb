class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
    @friend = Friend.find(params[:friend_id])
  end

  def create
    @friendship = Friendship.new(allow_friendship_params)
    @friendship.friend_id = params[:friend_id]
    @friendship.user_id = current_user.id
    @friendship.status = "Pending"
    if @friendship.save
      redirect_to root_path
    else
      render :new
    end
  end

  def accept
    @friendship = Friendship.find(params[:id])
    @friendship.confirm
    redirect_to profile_path
  end

  def decline
    @friendship = Friendship.find(params[:id])
    @friendship.decline
    redirect_to profile_path
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_to profile_path
  end

  private

  def allow_friendship_params
    params.require(:friendship).permit(:start_date, :start_hour, :end_date, :end_hour, :total_price)
  end
end
