class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
    @friend = Friend.find(params[:friend_id])
  end

  def create
    raise
  end
end
