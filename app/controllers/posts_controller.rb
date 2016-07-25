get '/posts/new' do
  #create a new post
end

post '/posts' do
  #post new post to database
end


get '/posts/new' do
  #create a new post
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
