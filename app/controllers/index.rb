class Deck
	attr_accessor :count, :title
	def initialize
		@count = 0
		@title = "bonbonbon"
	end
end

get '/' do
	erb :index
end

post '/' do
end

get '/register' do
	erb :register
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

