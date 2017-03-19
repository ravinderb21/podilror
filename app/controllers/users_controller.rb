class UsersController < ApplicationController

  layout 'user'
  
  def new
    @user = User.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def deactivate
  end
end
