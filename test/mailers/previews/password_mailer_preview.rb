# Preview all emails at http://localhost:3000/rails/mailers/password_mailer
class PasswordMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/password_mailer/reset
  def reset
    @token = params[:user].signed_id(purpose: 'password_reset', expires_in: 15.minutes)
    mail to: params[:user].email
  end

end
