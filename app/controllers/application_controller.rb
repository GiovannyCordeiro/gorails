class ApplicationController < ActionController::Base
  before_action :set_current_user

  def require_user_logged_id
    redirect_to sign_in_path, alert: 'you must be signed!' if Current.user.nil?
  end

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end
end
