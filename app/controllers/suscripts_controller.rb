class SuscriptsController < ApplicationController
  def express
       @type = params[:type]
       @suscript = Suscript.new(params[:suscript])
       @suscript.user_id = current_user.id
       @suscript.suscription_type = @type
       @suscript.save
       respond_to do |format|
          if @suscript.save
            case 
             when @type == 'curso'
               user = current_user
               @mail_n = UserNotify.suscript_to_biblic_course(user).deliver
              # puts @mail_n 
               
                 type=@type
                 @admin_users = User.where(:role => 'admin')
                   @admin_users.each do |user_admin|
                    @mail = UserNotify.notification_to_admin(user_admin, user, type).deliver
                 #   puts @mail
                   end
             when @type == 'revista'
               user = current_user
                @mail_n = UserNotify.suscript_to_magazine(user).deliver
              #   puts @mail_n 
                   type=@type
                   @admin_users = User.where(:role => 'admin')
                     @admin_users.each do |user_admin|
                       @mail = UserNotify.notification_to_admin(user_admin, user, type).deliver
                      # puts @mail
                     end
             when @type == 'contenidos'
               user = current_user
               @mail_n = UserNotify.suscript_to_living_channel(user).deliver
              # puts @mail_n
                     type=@type
                     @admin_users = User.where(:role => 'admin')
                       @admin_users.each do |user_admin|
                         @mail = UserNotify.notification_to_admin(user_admin, user, type).deliver
                        #  puts @mail
                       end
            end
          
            
             format.js 
             format.json 
          end
       end
    
  end
  
  def create
     @suscript = Suscript.new(params[:suscript])
     
     respond_to do |format|
       if @suscript.save
         format.js 
         format.json
       else
         format.js 
         format.json
       end
     end
   end
 
  # DELETE /suscripts/1
  # DELETE /suscripts/1.json
  def destroy
    @suscript = Suscript.find(params[:id])
    @suscript.destroy

    respond_to do |format|
      format.html { redirect_to suscripts_url }
      format.json { head :no_content }
    end
    
  end
end
