class PasswordResetsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # send email
      PasswordMailer.with(user: @user).reset.deliver_later
      # PasswordMailer.with(user: @user).reset.deliver_now
      redirect_to root_path, notice: 'Check your email for reset password'
    else
      redirect_to root_path, notice: 'Your email is not found'
    end
  end
end
