require_relative "status_codes.rb"

set :public_folder, File.dirname(__FILE__) + '/../frontend/'

get '/' do
    content_type "text/html"
    send_file File.expand_path('index.html', '../frontend/')
end

