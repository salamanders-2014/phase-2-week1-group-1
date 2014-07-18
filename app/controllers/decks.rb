get '/decks/:user_id' do
  if current_user && @curr_user.id == params[:user_id]
    erb :decks
  else
    redirect to("/decks/#{@curr_user.id}")
  end
end
