class ApplicationController < ActionController::Base
  def new
    @current_user = User.first
  end
end
