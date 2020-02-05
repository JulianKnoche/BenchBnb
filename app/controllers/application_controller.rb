class ApplicationController < ActionController::Base
  #CELLL
  def current_user
    @user ||= User.find_by(session_token: session[:session_token])
  end

  def ensure_logged_in
    redirect_to new_session_url unless logged_in?
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def login(user)
    session[:session_token] = user.reset_session_token!
  end

  def logged_in?
    !!current_user
  end
end
