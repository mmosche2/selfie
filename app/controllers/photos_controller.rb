class PhotosController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index

  end

  def create
    @photo = Photo.create(user_params)
    @photo.image = params[:image] if params[:image].present?
    @photo.save if @photo.valid?
    p "photo: #{@photo.inspect}"
    respond_with @photo, :location => user_photos_path(current_user.id)
  end

# http://stackoverflow.com/questions/10160286/uploading-a-file-to-rails-json-api-server-with-paperclip-and-multipart-request
# https://github.com/thoughtbot/paperclip/

  private

  def user_params
    params.require(:photo).permit(:image)
  end

end

# curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"photo":{"image":"fb_photo.jpg"}}'  http://localhost:3000/users/1/photos
