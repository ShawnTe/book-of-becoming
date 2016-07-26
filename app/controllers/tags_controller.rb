post '/tags' do
  "Hello World"
  p params
  # Tag.create({params["name"]})
end


post '/login' do
  # success
  redirect 'posts/new'
  # failed
end
