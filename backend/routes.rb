require_relative "status_codes.rb"
require 'json'

API_PATH = '/api'

set :public_folder, File.dirname(__FILE__) + '/../frontend/'

get '/' do
    content_type "text/html"
    send_file File.expand_path('index.html', 'frontend/')
end


def create_item(item)

    saveSuccessful = item.save

    if saveSuccessful then
        response.status = STATUS_CREATED
        return item.to_json
    else
        response.status = STATUS_BAD_REQUEST
    end
end


require_relative "routes/game.rb"
require_relative "routes/player.rb"
