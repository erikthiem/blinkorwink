# Get all players
get '/players' do
    players = Player.all
    return players.to_json
end

# Create a new player
post '/players' do

    associated_game_code = params[:game_code]

    game = Game.first(:code => associated_game_code)

    if game then

        player = Player.create(:game => game)
        create_item(player)
    else
        response.status = STATUS_BAD_REQUEST
    end

end
