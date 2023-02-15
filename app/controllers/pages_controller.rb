require 'flickr'

class PagesController < ActionController::Base
  def index
  end

  def show
    @flickr = Flickr.new
    @photos = @flickr.people.getPublicPhotos(user_id: params[:flickr_user_id])

  end
end