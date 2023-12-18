class FrontPageController < ApplicationController
  skip_before_action :login_required, only: [:index]

  def index
  end

  def signout
    session[:user_id] = nil
    redirect_to root_path
  end
end
