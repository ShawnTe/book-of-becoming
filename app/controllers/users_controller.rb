get '/users/:id' do

end

post '/tags' do
  current_user
  @tag = Tag.new(name: params[:name], user_id: @current_user.id)
  @tag.save
  p @tag
  redirect '/welcome'
  # Tag.create({params["name"]})
end
