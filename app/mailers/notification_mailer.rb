class NotificationMailer < ApplicationMailer
   default from: 'ookiioimo@gmail.com'

  def complete_mail
    @user = params[:user]
    mail(subject: "COMPLETE join your address" ,to: @user.email)
  end
end
