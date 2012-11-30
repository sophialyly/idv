class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :redirect
  before_filter :authenticate_user!  
  helper_method :authenticate!
  helper_method :current_url

  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == "livingmx" && password == "livin777"      
    end
    
  end
  
  def current_url
   request.url
  end
  
  def redirect
    case 
      when Rails.env = "production"
        @correct_link = "http://www.livingchannel.org/"
        if request.url != @correct_link
          redirect_to @correct_link
          return false
        end
      when Rails.env = "development"
      else
      end
  end
  
  
end
