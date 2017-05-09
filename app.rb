require 'sinatra'

get '/' do
	erb :home
end

get '/new' do
	@code = generateGameCode()
	erb :game
end

get '/:code' do
	@code = params["code"]
	erb :game
end


def generateGameCode()
    return [*('a'..'z'),*('0'..'9')].shuffle[0,5].join 
end
