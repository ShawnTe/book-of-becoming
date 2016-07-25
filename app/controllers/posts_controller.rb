get '/posts/new' do
  "New post here"
  erb :"posts/new"
end

post '/posts' do
  # Post.create(params)
  redirect "posts/new"
end
