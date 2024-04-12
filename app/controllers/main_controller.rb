class MainController < ApplicationController
  def index
    @content = 'Root controller'
    flash.now[:notice] = 'Logged'
    flash.now[:alert] = 'You not logged'
  end
end
