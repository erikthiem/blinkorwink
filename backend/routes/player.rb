# Get all players
get '/players' do
    players = Player.all
    return players.to_json
end

def addNewPlayerToGame(game)
    number_of_players_in_game = Player.all(:game => game).count

    puts number_of_players_in_game

    if number_of_players_in_game < 2 then

        player = Player.create(:game => game)
        create_item(player)
    else
        response.status = STATUS_BAD_REQUEST
    end
end

# Create a new player
post '/players' do

    associated_game_code = params[:game_code]

    game = Game.first(:code => associated_game_code)

    if game then

        addNewPlayerToGame(game)

    else
        response.status = STATUS_BAD_REQUEST
    end

end
