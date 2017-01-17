class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Devise authenticatin helpers
  before_action :authentication_user!
  # user_signed_in?
  # current_user
  # user_session
  # after_sign_in_path_for
  # after_sign_out_path_for
end
