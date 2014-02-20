class PhotosController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end

  def create
    # @photo = Photo.create( params[:photo] )
    @photo.image = params[:image] if params[:image].present?
    @photo.save if @photo.valid?
  end

# http://stackoverflow.com/questions/10160286/uploading-a-file-to-rails-json-api-server-with-paperclip-and-multipart-request
# https://github.com/thoughtbot/paperclip/

  # private

  # def user_params
  #   params.require(:photos).permit(:image)
  # end

end
