get '/login' do
  erb :login
end

post '/login' do
  @user = User.new(params[:user])
  @user.id
  redirect '/posts/new'
end


get '/register' do

end