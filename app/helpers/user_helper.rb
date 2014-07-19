helpers do
  def current_user
    id = session[:curr]
    if id
      @curr_user = User.find(id)
    else
      nil
    end
  end
end
