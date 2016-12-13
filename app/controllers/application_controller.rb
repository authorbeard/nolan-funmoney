class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def index
    redirect_to sign_in_path unless user_signed_in?
    redirect_to user_path(current_user)
  end



end
