class UsersController < ApplicationController

  load_and_authorize_resource
  
  layout 'main'
  
  before_action :confirm_logged_in, :except => [:new, :create]

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @role = Role.find_by_id(2) # Default to 'user' role
    @user.roles << @role
    if @user.save
      flash[:notice] = "User registration successfuly!"
      #redirect_to(user_path(:id => @user.id))
      redirect_to(root_path)
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
    if @user.id == session[:user_id]
      flash[:notice] = "Can not delete your own profile!"
      redirect_to(users_path)
    else 
      @user.avatar = nil
      @user.destroy
      redirect_to(users_path)
      flash[:notice] = "User deleted successfuly!"
    end
  end

  def deactivate
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :avatar, role_ids: [])
  end
end
