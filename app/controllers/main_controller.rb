class MainController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end

    @content = 'Root controller'
    # flash.now[:notice] = 'Logged'
    # flash.now[:alert] = 'You not logged'
  end
end
