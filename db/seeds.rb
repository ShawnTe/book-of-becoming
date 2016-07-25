require 'faker'

users = User.all
users.each {|user| user.destroy}

posts = User.all
posts.each {|post| post.destroy}

tags = User.all
tags.each {|tag| tag.destroy}

40.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password_digest: Faker::Internet.password,
    # image_url: Faker::Company.logo
  )
end

tags = ['Q', 'Summit', 'NP', 'Coding', 'Foodie']
1000.times do
  Post.create(
    title: Faker::Name.first_name,
    note: Faker::Name.last_name,
    user_id: rand(1..40),
    tag_id: rand(1..5)
  )
end

