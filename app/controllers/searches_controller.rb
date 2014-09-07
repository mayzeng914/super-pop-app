class SearchesController < ApplicationController
  require "instagram"

  respond_to :json

   def index
    Instagram.configure do |config|
      config.client_id = 'ce5ace1b89a749edafede0f742ef1edb'
      config.client_secret = '620bcb48a9414f1399adb5df84fa8c0f'
      # For secured endpoints only
      #config.client_ips = '<Comma separated list of IPs>'
    end
    
    client = Instagram.client(:access_token => '3172303.3bc0d59.22110f07a75d450cbc0743667f6f33e6')
    @html = "<h1>Search for tags, get tag info and get media by tag</h1>"
    tags = client.tag_search('puppy')
    @media_count = tags[0].media_count
    @tag_name = tags[0].name
    @media_item = client.tag_recent_media(tags[0].name)


    
  end

  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
  end

  def create
    # @search = Search.new(params.require(:search).permit(:tags))
  end

  def edit
    @search = Search.find(params[:id])
  end

  def update
    @search = Search.find(params[:id])
  end

  def destroy
    @search = Search.find(params[:id]).destroy
  end

end
