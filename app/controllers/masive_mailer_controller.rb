class MasiveMailerController < ApplicationController
  def masive_send_mailer
     @message = params[:message]
     @users = User.all
     @users.each do |user|
         @user = user
         @mail_n = UserNotify.masive_mailer(@user, @message).deliver
         pust @mail_n
     end
  end
end
