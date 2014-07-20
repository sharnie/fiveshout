class WelcomeController < ApplicationController
  before_action :redirect_to_dashboard

  def index
  end

private

  def redirect_to_dashboard
    redirect_to shouts_path if user_signed_in?
  end

end
