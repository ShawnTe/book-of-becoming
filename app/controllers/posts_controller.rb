get '/posts' do
  # show a list of posts
  @posts = Post.where("tag_id = 3")
  erb :'/posts/show'
end

post '/posts' do
  # Post.create(params)
  #post new post to database
  p params
  p "**************"
  redirect "/posts/new"
end

get '/posts/new' do
  p "New post here"

  erb :"/posts/new"
end

get '/posts/:id/edit' do
  #non-ajax way to change a post
  erb :edit
end

put '/posts/:id' do
  #update the edits to database
end

delete '/posts/:id' do
  #delete a post from database
end


# Not using???

# get '/posts/:id' do
##   display a single post
# end

