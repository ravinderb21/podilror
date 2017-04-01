class AccessController < ApplicationController

	layout 'main'

	before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def menu
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
  		redirect_to(access_menu_path)
  	else
  		flash[:notice] = 'Login unsuccessful. Invalid username or password provided'
  		render('login')
  	end
  end

  def logout
  end
end
