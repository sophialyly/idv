class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  helper_method :authenticate!
  
  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == "remalogosshekina" && password == "livingadministratore54321ap0985432176543212"
    end
  end
end
