class ApplicationController < ActionController::Base
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
  	signout
  	super
  end
end
