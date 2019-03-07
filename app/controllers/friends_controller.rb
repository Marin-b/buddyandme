class FriendsController < ApplicationController
  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(set_params)
    @friend.user_id = current_user.id
    if @friend.save
      redirect_to new_friend_photo_path(current_user)
    else
      render :new
    end
  end

  def index
    friends = Friend.joins(:user).where('users.language = ?', params[:option].downcase)
    @friends = friends.near(params[:location], 10)
  end

  def show
    @friend = Friend.find(params[:id])
    @user_friend = User.find(@friend.user_id)
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(set_params)
    if @friend.save
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def set_params
    params.require(:friend).permit(:large_description, :location, :price_per_hour)
  end
end
