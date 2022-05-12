class PasswordResetMailer < Devise::Mailer
  #default from: "<#{ENV['EMAIL']}>"
  default from: "info@tecaudex.com"

  def welcome_staff
    @user = params[:user]
    @token = params[:token]
    @url = 'http://localhost:3000/welcomestaff'
    mail(to: @user.email, subject: "Welcome to tasks app" )
  end
  # def reset_password_instructions(record, token, opts={})
  #   super
  # end
end
