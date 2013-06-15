# -*- coding: utf-8 -*-
class UserNotify < ActionMailer::Base

  default from: "non-reply@livingchannel.org"
  
  def suscript_to_biblic_course(user)
      @user = user
      @url  = "http://www.livingchannel.org/#{@user.id}/biblic_course_members"
      mail :to => @user.email, :subject => "Te has suscrito al Cúrso biblico por correspondencia en www.livingchannel.org "
      
  end
  def suscript_to_living_channel(user)
       @user = user
       @url  = "http://www.livingchannel.org/"
       mail :to => @user.email, :subject => "Te has suscrito a las actualizaciones de www.livingchannel.org"
   end
   
  def suscript_to_magazine(user)
       @user = user
       @url  = "http://www.livingchannel.org/"
       mail :to => @user.email, :subject => "Te has suscrito a las revista el mundo del mañana mediante www.livingchannel.org"
  end
  
  def notification_to_admin(user_admin, user, type)
      @user_admin = user_admin
      @user = user
      @type = type
      mail :to => @user_admin.email, :subject => "El usuario #{@user.email} de ha suscrito nuestro(a) #{@type}", :from => "user_petition@livingchannel.org"   
  end
  
  def notification_update(user, type)
     @user = user
     @type = type
     @url  = "http://www.livingchannel.org/"
     mail :to => @user.email, :subject => "Hola #{@user.email} se ha actualizado #{@type}"
  end
  
  def create_new_request(user_to, request)
     @request = request
     @user_to = user_to
     @url  = "http://www.livingchannel.org/notificate_request"
     mail :to => @user_to.email, :subject => "Notificación de petición"
     
  end
   
   
   
end
