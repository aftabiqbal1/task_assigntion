require 'securerandom'

class StaffsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user.users.new(user_params)
    if @user.save
      #----- need to create reset password token
      @user.reset_password_token = SecureRandom.hex(10)
      @user.reset_password_sent_at = Time.now.utc
      @user.save(validate: false)

      #----- you need to send invite email which will have link to reset password.
      PasswordResetMailer.reset_password_instructions(@user, @user.reset_password_token,{})
      # render "password_reset_mailer/new", notice: "Successfully added"
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name).reverse_merge(role: User.roles['staff'], password: SecureRandom.hex(5))
  end

  # def set_reset_password_token
  #   raw, self.reset_password_token = SecureRandom.hex(10)
  #   self.reset_password_sent_at = Time.now.utc
  #   save(validate: false)
  #   raw
  # end
end