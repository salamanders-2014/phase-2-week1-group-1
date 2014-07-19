get '/loggedin/:user_id' do
  @curr_user = current_user
  if @curr_user.id.to_s == params[:user_id]
    @all_games = @curr_user.games 
    erb :logged_in
  elsif @current_user
    redirect to("/loggedin/#{@curr_user.id}")
  else
    redirect to('/')
  end
end
