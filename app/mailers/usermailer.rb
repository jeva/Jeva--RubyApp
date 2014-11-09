class Usermailer < ActionMailer::Base
  default from: "noreply@custom-c9-fadhil.c9.io"

 def welcome_email(user)
   @user = user
   @url = sign_in_url
   mail(to: @user.email, subject: 'Thank You Joining Us !')


  end

end
