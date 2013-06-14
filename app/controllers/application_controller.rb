class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!  
  helper_method :authenticate!
  helper_method :current_url
  helper_method :mobile?
  helper_method :computer_platform
  helper_method :version_browser
  helper_method :browser_active
  helper_method :suscript_to_magazine
  helper_method :suscript_to_course
  helper_method :suscript_to_channel

  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == "livingmx" && password == "livin777"      
    end
    
  end
  
  def current_url
   request.url
  end
  
  def suscript_to_magazine
    @suscript = Suscript.find_by_user_id_and_suscription_type(current_user.id, 'revista')
  end
  
  def suscript_to_course
    @suscript = Suscript.find_by_user_id_and_suscription_type(current_user.id, 'curso')
  end
  
  def suscript_to_channel
    @suscript = Suscript.find_by_user_id_and_suscription_type(current_user.id, 'contenidos') 
  end 
 
  
  def mobile?
   # request.user_agent =~ /Mobile|webOS/ 
    request.env["HTTP_USER_AGENT"] && request.env["HTTP_USER_AGENT"][/(iPhone|iPod|iPad|Android)/]
  end
  
  def browser_active
     @data_integrate = request.env['HTTP_USER_AGENT']
     @user_agent = UserAgent.parse(@data_integrate)
     @browser = @user_agent.browser
   end

   def browser_version
     @data_integrate = request.env['HTTP_USER_AGENT']
     @user_agent = UserAgent.parse(@data_integrate)
     @browser = @user_agent.version
   end

   def computer_platform
     @data_integrate = request.env['HTTP_USER_AGENT']
     @user_agent = UserAgent.parse(@data_integrate)
     @computer_plataform = @user_agent.platform
   end
  
end
