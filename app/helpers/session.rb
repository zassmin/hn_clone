helpers do

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def login_user(user)
    session[:user_id] = user.id
  end

  def logout
    session.clear
  end
end
