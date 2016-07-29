def my_tags
  @tags = Tag.where(user_id: current_user.id)
end

def my_posts
  @posts = Post.where(user_id: current_user.id).order(created_at: :desc)
end

Unsplash.configure do |config|
  config.application_id     = ENV['APP_ID']
  config.application_secret = ENV['SECRET_KEY']
  config.application_redirect_uri = "https://book-of-becoming.herokuapp.com"
end


def get_photo
  photo = Unsplash::Photo.search(category='nature').sample
p photo

  # @photo_user = photo.user.username
  # @photo_name = photo.user.name
  # @photo_link = photo.user.links["html"]
  photo.urls["full"]

end

