class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @friend = Friend.find(current_user.friend.id)
  end

  def create
    @photo = Photo.new(set_params)
    @photo.friend_id = current_user.friend.id
    if @photo.save
      params["commit"] == "Done" ? (redirect_to root_path) : (redirect_to new_friend_photo_path(current_user))
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:photo).permit(:picture)
  end
end
