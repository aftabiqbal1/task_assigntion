class PasswordResetMailer < Devise::Mailer
  default from: "<#{ENV['EMAIL']}>"

  def reset_password_instructions(record, token, opts={})
    super
  end
end
