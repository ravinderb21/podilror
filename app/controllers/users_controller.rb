class UsersController < ApplicationController

  layout 'main'

  def index

  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(users_path)
    else
      flash[:notice] = "Registration unsuccessful!"
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def deactivate
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password)
  end
end
