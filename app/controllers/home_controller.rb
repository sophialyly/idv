class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index, :web_data, :public_videos]
  helper_method :members
  def index
     @suscriber = Suscriber.new
    if current_user
       redirect_to videos_path
      else
      if mobile?
        redirect_to new_user_session_path
      else
        
      end
    end
  end
  def curso
    members
    @docuent_files = DocuentFile.where(:typeo => 'course')
    
  end
  
  def revista
    members
    @docuent_files = DocuentFile.where(:typeo => 'magazine')
  end

  def services
    members
  end
  
  def colombian_services
    members
  end
  
  def puerto_rico_services
    members
  end
  
  def video
    members
  end
  
  def video_mexico
     members
   end
  
  def video_colombian
    members
  end
  
  def video_puerto_rico
    members
  end

  def hymnal
    members
  end
  
  def web_data
    members
  end
  
  def members
    @user = User.count
  end
  
  def public_videos
  end
end
