post '/guess/:gameid' do
  ans = params[:guess]
  @curr_user = current_user
  @curr_game = Game.find(params[:gameid])
  
  if @curr_user && @curr_user.games.includes(@curr_game)
    @curr_card = @curr_game.curr_card
    @curr_game.guesses.create(game_id: @curr_game.id, card_id: @curr_card.id, correct?: @curr_card.check_answer(ans))
    @curr_game.next
    redirect to("/play/#{@curr_game.id}")
  elsif @current_user
    redirect to("/loggedin/#{@curr_user.id}")
  else
    redirect to('/')
  end
end