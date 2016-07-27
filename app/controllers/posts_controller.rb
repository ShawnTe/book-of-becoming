get '/posts/new' do
  @posts = Post.where(user_id: current_user.id)
  @tags = Tag.where(user_id: current_user.id)
  p "%" * 100
  p @tags
  p @tags.length

  @tags.each do |tag|
    p tag.name
  end
  p current_user.id
  erb :"/posts/new"

end

get '/posts/:id' do
  #show all posts of a tag
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

get '/posts' do
  @posts = Post.where(user_id: current_user.id)

  erb :'/posts/show'
end

post '/posts' do
  @post = Post.new(params[:post])
  @post.user_id = current_user.id
  if @post.save

  posts = Post.where(user_id: current_user.id)
  # @posts = posts.order(title: :desc)

# p @post.created_at
    if request.xhr?
p "*" * 100
p "I'm in ajax!!!"
      content_type :json
      data = {post: @post}.to_json
      # erb :'_show'
    else
      p "*" * 100
p "I'm in the else!!!"
      redirect '/posts/new'

    end

  else
      "Oops! That didn't save for some reason."
  end
  # p select("user", "tag_id", @tags.collect {|r| [ r.name, r.id ] }, { :include_blank => true })

  redirect "/posts/new"
end
