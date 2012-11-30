class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index, :web_data]
  helper_method :members
  def index
    if current_user
       redirect_to videos_path
      else
    end
  end

  def services
    members
  end

  def video
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
end
