class HomeController < ApplicationController

	layout 'main'

  before_action :confirm_logged_in, :except => [:index, :login, :attempt_login, :logout]
	
  def index
  end

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = 'User login successful!'
      redirect_to(home_account_path)
    else
      flash[:notice] = 'Login unsuccessful. Invalid username or password provided'
      render('login')
    end
  end

  def account
    @user = User.find(session[:user_id])
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = 'Successfuly logged out!'
    redirect_to('/')
  end

  def contact
  end
end
