class PagesController < ApplicationController

  def index
    if user_signed_in?
      redirect_to user_photos_path(current_user.id)
    end
  end

end
