get '/logout' do
  session[:curr] = nil
  redirect to('/')
end