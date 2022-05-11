require 'securerandom'

class StaffsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user.users.new(user_params)
    debugger
    if @user.save
      PasswordResetMailer.reset_password_instructions(@user, @user.reset_password_token,{})
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name).reverse_merge(role: User.roles['staff'], password: SecureRandom.hex(5))
  end
end