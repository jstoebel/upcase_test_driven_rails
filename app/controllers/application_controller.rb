class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to new_session_path unless signed_in?
  end

  def signed_in?
    current_user.signed_in?
  end

  def sign_in_user(email)
    session[:current_email] = email
  end

  def current_user
    # stopped at 10:16
    User.new(session[:current_email])
  end
end
