class PhotosController < ApplicationController
  def new
    @photo = Photo.new()
  end

  def create
  end
end
