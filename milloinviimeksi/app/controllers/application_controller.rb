# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :authenticate_required

  def authenticate_required
    unless session[:user_id]
      redirect_to session_path
      return false
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
