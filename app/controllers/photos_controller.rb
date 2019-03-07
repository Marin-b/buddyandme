class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @friend = Friend.find(current_user.friend.id)
  end

  def create
    redirect_to new_friend_photo_path(current_user) if params[:photo].nil?
    @photo = Photo.new(set_params)
    @photo.friend_id = current_user.friend.id
    if @photo.save
      params["commit"] == "Done" ? (redirect_to friend_path(current_user.friend)) : (redirect_to new_friend_photo_path(current_user))
    else
      render :new
    end
  end

  def destroy
    @photo.find(params[:id])
    @photo.destroy
  end

  private

  def set_params
    params.require(:photo).permit(:picture)
  end
end
