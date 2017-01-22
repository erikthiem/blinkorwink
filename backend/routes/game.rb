# Get all games
get API_PATH + '/games' do
    games = Game.all
    return games.to_json
end

def generateGameCode()
    return [*('a'..'z'),*('0'..'9')].shuffle[0,5].join 
end

# Create a new game
post API_PATH + '/games' do

    game_code = generateGameCode()

    game = Game.create(:code => game_code)
    create_item(game)
end
