get '/' do
	erb :index
end

post '/' do
end

get '/register' do
	erb :register
end

post '/register' do
end

get '/logged_in'	do
	erb :logged_in
end

get '/card' do
	erb :card
end

post '/card' do
	@curr_card = Game.new
end

get '/results'do
	erb :results
	end