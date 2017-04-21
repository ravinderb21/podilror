class ApplicationController < ActionController::Base

	include CanCan::ControllerAdditions

  protect_from_forgery with: :exception

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(home_login_path)
      # redirect_to prevents requested action from running
    end
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

end
