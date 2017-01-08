class Game
    include DataMapper::Resource

    property :id, Serial

    property :code, String, :unique => true
    property :number_players, Integer

    has n, :players
end
