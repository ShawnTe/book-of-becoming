require 'faker'

users = User.all
users.each {|user| user.destroy}

posts = User.all
posts.each {|post| post.destroy}

tags = User.all
tags.each {|tag| tag.destroy}

# Create tags
tags = ["Q", "Web Dev", "Foodie", "Peeps connect"]
tags.each do |tag|
  Tag.create({name: tag, user_id: rand(1..40)})
end

# Create users
40.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: '',
    password_digest: Faker::Internet.password,
    # image_url: Faker::Company.logo
  )
end

# Create posts
1000.times do
  Post.create(
    title: Faker::Company.bs,
    note: Faker::Lorem.paragraph,
    user_id: rand(1..40),
    tag_id: rand(0..3)
  )
end
