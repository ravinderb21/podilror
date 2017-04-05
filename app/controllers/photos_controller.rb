class PhotosController < ApplicationController

  layout 'main'
  before_action :confirm_logged_in

  def index
  end

  def show
  end

  def new
    @categories = Category.sorted
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo successfully uploaded!"
      redirect_to(home_account_path)
    else
      flash[:notice] = "Error uploading photo!"
      render('new')
    end
  end

  def delete
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption, :user_id, :category_id)
  end
end
