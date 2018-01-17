require 'sinatra'

get '/'  do

@contador = 0
erb :index

end


post '/' do
	params[:contador] = params[:contador].to_i + 1
	@contador = params[:contador]
	erb :index
end
