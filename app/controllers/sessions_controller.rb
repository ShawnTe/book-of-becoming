get '/' do
  @photo = get_photo
  erb :index
end

# all other login / logout in sessions_controller

get '/welcome' do
  my_tags
  erb :'users/welcome'
end


# Login
get '/login' do
  erb :'sessions/login'
  # success
  # failed
end

# post '/login' do
# #   p params
#   @user = authenticate(params[:email], params[:password])
# # p @user
#   if @user.authenticate
#     login(@user)
#     redirect '/posts'
#   else
#     @error = "Either your password or email don't match."
#     p @error
#     erb :'sessions/login'
#   end
# # p current_user
# end

post '/login' do
  @user = User.find_by_email(params[:email])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect '/posts'
  else
    @error = "Either your password or email don't match."
    erb :'sessions/login'
  end
end


# Register
get '/register' do
  erb :'/sessions/register'
end

post '/register' do
    if params[:password1] == params[:password2]
      user = User.new(first_name: params[:first], last_name: params[:last], email: params[:email],  password: params[:password1])
      user.valid?
      @error = user.errors.full_messages
      if user.save
        session[:user_id] = user.id
        redirect '/welcome'
      else
        @error
        erb :'sessions/register'
      end
    else
      @error
      erb :'sessions/register'
    end
end
# Logout
get '/logout' do
  logout
  redirect '/'
end
