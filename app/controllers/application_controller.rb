class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  helper_method :authenticate!
  
  
  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == "livingmx" && password == "livin777"      
    end
    
  end
  
  
end
