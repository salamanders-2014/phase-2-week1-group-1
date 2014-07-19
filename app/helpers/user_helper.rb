helpers do
  def current_user
    id = session[:curr]
    if id
      begin
        @curr_user = User.find(id)
        return @curr_user
      rescue 
        session[:curr] = nil
        return nil
      end
    else
      return nil
    end
  end
end
