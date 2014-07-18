get '/register' do
  erb :register
end

post '/register' do
  @curr_user = User.create(params[:input])
  erb :loggedin
end
