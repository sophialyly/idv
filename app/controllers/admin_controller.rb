class AdminController < ApplicationController
  def documents
   if current_user.role == "admin"
    @docuent_file = DocuentFile.new
    @docuent_files = DocuentFile.all
   else
    redirect_to root_path
   end
  end

  def gallery
     if current_user.role == "admin"
       @photo = Photo.new
       @gallery_private = Photo.where(:add_gallery => 'private')
       @gallery_public = Photo.where(:add_gallery => 'public')
       @gallery_sucot = Photo.where(:add_gallery => 'sucot')
     else
       redirect_to root_path
     end
  end
  
  def users
    @users = User.all
  end
end
