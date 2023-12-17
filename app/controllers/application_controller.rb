class ApplicationController < ActionController::Base
  before_action :login_required

  private

  def login_required
    redirect_to '/signin' unless current_user
  end

  def current_user
    @current_user ||= RubyAuthMetamask::User.find_by_id(session[:user_id]) if session[:user_id]
  end
end
