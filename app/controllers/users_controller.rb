class UsersController < ApplicationController

  layout 'main'

  def index
    @users = User.all
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

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.avatar = nil
    @user.destroy
    redirect_to(users_path)
    flash[:notice] = "User deleted successfuly!"
  end

  def deactivate
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :avatar)
  end
end
