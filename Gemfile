source 'https://rubygems.org'
ruby '2.3.1'
gem 'sinatra', '~>2.0.0'
gem 'data_mapper', '1.2.0'
gem 'json', '1.8.3'

group :production do
    gem 'pg'
    gem 'dm-postgres-adapter'
end

group :development, :test do
    gem 'sqlite3'
    gem 'dm-sqlite-adapter'
end
