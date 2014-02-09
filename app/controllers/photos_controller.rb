class PhotosController < ApplicationController

  def index

  end

  def create
    # @photo = Photo.create( params[:photo] )
    @photo.image = params[:image] if params[:image].present?
    @photo.save if @photo.valid?
  end


  # private

  # def user_params
  #   params.require(:photos).permit(:image)
  # end

end
