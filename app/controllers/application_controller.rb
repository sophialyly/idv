class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :redirect
  before_filter :authenticate_user!  
  helper_method :authenticate!
  helper_method :current_url
  def redirect
    case 
      when Rails.env == "production"
        @url = current_url
        if @url == "http://www.livingchannel.org"
        else
          redirect_to "http://www.livingchannel.org"
        end
      when Rails.env == "developement"
      else
      end  
        
  end
  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == "livingmx" && password == "livin777"      
    end
    
  end
  
  def current_url
   request.url
  end

  
  
end
