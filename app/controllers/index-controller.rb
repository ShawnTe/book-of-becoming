get '/' do
  erb :index
end

# all other login / logout in sessions_controller

get '/welcome' do
  erb :'users/welcome'
end

