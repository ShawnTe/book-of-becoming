get '/posts/new' do
  my_posts
  my_tags
  erb :"/posts/new"

end


get '/posts/show/:id' do
  #show all posts of a tag
  p params[:id]
  p "*" * 25
   p "^" * 25
   my_tags
   my_posts
  erb :'/posts/show'
end

get '/posts/show' do
  #show all posts of a tag
   my_tags
  erb :'/posts/show'
end

get '/posts/:id/edit' do
  #non-ajax way to change a post
  @post = Post.find(params[:id])
  p @post
  my_tags
  p params
  p "#-%" * 50
  erb :'/posts/edit'
end

get '/posts/:id/edit' do
  #ajax way to edit post
  #to edit post make a partial that shows up on page
  # @post = Post.find()
  erb '/posts/_edit'

end

put '/posts/:id' do
  #update the edits to database
  @post = Post.find(params[:id])
  @post.update(params[:post])
  p @post
  p "put  put  " * 50
  redirect '/posts/new'
end

delete '/posts/:id' do
  #delete a post from database
  Post.find(params[:id]).destroy
  redirect '/posts/new'
end


# Not using???

# get '/posts/:id' do
##   display a single post
# end

get '/posts' do
  @posts = Post.where(user_id: current_user.id)

  erb :'/posts/show'
end

post '/posts' do
  @post = Post.new(params[:post])
  @post.user_id = current_user.id
  if @post.save

  posts = Post.where(user_id: current_user.id)
    if request.xhr?
      content_type :json
      data = {post: @post}.to_json
      # erb :'_show'
    else
      redirect '/posts/new'
    end

  else
      "Oops! That didn't save for some reason."
  end
  # p select("user", "tag_id", @tags.collect {|r| [ r.name, r.id ] }, { :include_blank => true })

  redirect "/posts/new"
end
