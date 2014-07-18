# Index page ===========================================

get '/'  do
  if current_user
    erb :loggedin
  else
    erb :index
  end
end

post '/' do
  #user authentication
  @curr_user = User.authenticate(params[:input])
  if @curr_user == nil
    flash[:error] = "Invalid email/password. Please try again!"
  else
    session[:curr] = @curr_user.id
    redirect to("/loggedin/#{@curr_user.id}")
  end
end
