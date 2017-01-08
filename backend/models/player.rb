class Player
    include DataMapper::Resource

    property :id, Serial

    belongs_to :game
end
