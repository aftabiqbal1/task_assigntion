require 'securerandom'

class StaffsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = current_user.users.new(user_params)
    if @user.save
      render "password_reset_mailer/new", notice: "Successfully added"
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name).reverse_merge(role: 1, password: SecureRandom.hex(5))
  end
end