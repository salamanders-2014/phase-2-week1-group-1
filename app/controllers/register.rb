get '/register' do
  erb :register
end

post '/register' do
  @curr_user = User.create(params[:input])
  session[:curr] = @curr_user.id
  erb :logged_in
end
