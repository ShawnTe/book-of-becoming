helpers do
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session[:user_id] = nil
  end

  def authenticate(email, password)
    binding.pry
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      nil
    end
  end
end
