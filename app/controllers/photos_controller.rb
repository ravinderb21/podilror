class PhotosController < ApplicationController

  layout 'main'

  def index
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo successfully uploaded!"
      redirect_to(photo_path)
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
    params.require(:photo).permit(:image, :caption)
  end
end
