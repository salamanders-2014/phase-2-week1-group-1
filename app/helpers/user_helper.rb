helpers do
  def current_user
    @curr_user ||= User.find(session[curr])
  end
end
