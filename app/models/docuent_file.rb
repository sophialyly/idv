class DocuentFile < ActiveRecord::Base
  
  mount_uploader :documents, DocumentsUploader
  mount_uploader :image_file, ImageFileUploader
  
end
