class Game
    include DataMapper::Resource

    property :id, Serial

    property :code, String
    property :number_players, Integer
end
