get '/play/:gameid' do
  @curr_user = current_user
  @curr_game = Game.find(params[:gameid])
  if @curr_user && @curr_user.games.includes(@curr_game)
    @curr_card = @curr_game.curr_card
    erb :card
  elsif @current_user
    redirect to("/loggedin/#{@curr_user.id}")
  else
    redirect to('/')
  end
end