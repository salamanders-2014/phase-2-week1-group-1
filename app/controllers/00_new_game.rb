get '/new' do 
  @curr_user = current_user
  if @curr_user
    @all_decks = Deck.all 
    erb :new_game
  else
    redirect to('/')
  end
end

post '/new/:deckid' do
  @curr_user = current_user
  if @curr_user
    deck = Deck.find(params[:deckid].to_i)
    @curr_game = Game.create(deck_id: deck.id, user_id: @curr_user.id)
    @curr_user.games << @curr_game
    redirect to("/loggedin/#{@curr_user.id}")
  else
    redirect to('/')
  end
end