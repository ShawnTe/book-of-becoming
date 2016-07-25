get '/' do
  erb :index
end

get '/login' do
  "Login route"
  # temporary until login set up
  redirect 'posts/new'

end

post '/login' do
  # success
  redirect 'posts/new'
  # failed
end

get '/register' do
  "Register route"
end

post '/login' do
  # success
  redirect 'welcome'
  # failed
end

