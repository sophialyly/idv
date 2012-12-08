# encoding: utf-8

class ImageFileUploader < CarrierWave::Uploader::Base
   include CarrierWave::MiniMagick
   storage :s3   
   def store_dir
      "uploads/images/#{model.id}"
    end

    version :gallery do
      process :resize_to_fit => [500, 500]
    end

    version :large do
      process :resize_to_fit => [700, 700]
    end

    version :relative do
      process :resize_to_fill => [70, 70]
    end
    
    version :follet do
      process :resize_to_fill => [104, 114]
    end

    version :small do
      process :resize_to_fill => [40, 40]
    end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

 
end
