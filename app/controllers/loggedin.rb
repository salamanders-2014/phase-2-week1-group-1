get '/loggedin/:user_id' do
  if current_user && @curr_user.id == params[:user_id]
    erb :loggedin
  else
    redirect to("/loggedin/#{@curr_user.id}")
  end
end
