class Game
    include DataMapper::Resource

    property :id, Serial

    property :code, String, :unique => true

    has n, :players
end
