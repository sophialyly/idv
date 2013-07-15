class SuscribersController < ApplicationController
  skip_before_filter :authenticate_user!
  layout 'suscript'
  def create
       @suscriber = Suscriber.new(params[:suscriber])
       @suscriber.save
       
       
       respond_to do |format|
            format.js
            format.json    
       end
       
       if @suscriber.save
            @mail_n = UserNotify.suscript_to_living_channel(@suscriber).deliver
       end
            
  end

  def new
      @suscriber = Suscriber.new
  end

  def destroy
  end
end
