class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  def saver
    photo_url = params['photo_url']
    user_id = params['user_id']

    # Create a photo with a reference to a user and save to database
    Photo.create!(photo_url: photo_url, user_id: user_id)

    


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photo_params
      params[:photo]
    end
end
