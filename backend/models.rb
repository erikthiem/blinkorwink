require 'data_mapper'


configure :development, :test do
	DataMapper::setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/database.db")
end

configure :production do
	DataMapper::setup(:default, ENV['DATABASE_URL'])
end

require_relative 'models/game.rb'
require_relative 'models/player.rb'

DataMapper.finalize
DataMapper.auto_upgrade!
