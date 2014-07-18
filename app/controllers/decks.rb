get '/decks/:user_id' do
  if current_user && @curr_user.id == params[:user_id]
    @curr_deck = @curr_user.decks.first
    @curr_card = @curr_deck.next
    erb :card
  else
    redirect to("/decks/#{@curr_user.id}")
  end
end


post '/decks/:user_id' do
  answer = params[:guess]

end
