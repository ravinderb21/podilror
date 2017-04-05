class HomeController < ApplicationController

	layout 'main'
  before_action :confirm_logged_in, :only => [ :account ]
	
  def index
  end

  def account
    @user = User.find(session[:user_id])
    @photos = Photo.where(:user_id => @user.id)
  end

  def login
  end

  def contact
  end
end
