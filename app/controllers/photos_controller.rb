class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @friend = Friend.find(current_user.friend.id)
  end

  def create
    if params[:photo].nil? && params["commit"] != "Done"
      redirect_to new_friend_photo_path(current_user)
      return
    elsif params[:photo].nil? && params["commit"] == "Done"
      redirect_to friend_path(current_user.friend)
      return
    end
    @photo = Photo.new(set_params)
    @photo.friend_id = current_user.friend.id
    if @photo.save
      params["commit"] == "Done" ? (redirect_to friend_path(current_user.friend)) : (redirect_to new_friend_photo_path(current_user))
    else
      render :new
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to profile_path
  end

  private

  def set_params
    params.require(:photo).permit(:picture)
  end
end
