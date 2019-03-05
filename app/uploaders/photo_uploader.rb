class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else
  version :avatar do
    resize_to_fit 35, 35
  end
end
