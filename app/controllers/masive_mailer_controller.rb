class MasiveMailerController < ApplicationController
  def masive_send_mailer
     message = params[:message]
     user = User.find_by_email('jose_alfredo@cursa.me')
   #  @users = User.all
    # @users.each do |user|
         @mail_n = UserNotify.masive_mailer(user, message).deliver
         puts @mail_n
    # end
  end
end
