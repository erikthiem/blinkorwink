# Get all games
get '/games' do
    games = Game.all
    return games.to_json
end
