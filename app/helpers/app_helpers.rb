def my_tags
  @tags = Tag.where(user_id: current_user.id)
end

def my_posts
  @posts = Post.where(user_id: current_user.id).order(created_at: :desc)
end




Unsplash.configure do |config|
  config.application_access_key     = ENV['APP_ID']
  config.application_secret = ENV['SECRET_KEY']
  config.application_redirect_uri = "https://book-of-becoming.herokuapp.com"
end


def get_photo
  photo = Unsplash::Photo.search(category='nature').sample
# p photo

  # @photo_user = photo.user.username
  # @photo_name = photo.user.name
  # @photo_link = photo.user.links["html"]
  photo.urls["full"]
  # "https://hd.unsplash.com/44/HsQM7Jd2Qlysfyk9SgvX_logarska-valley-5.jpg"

end
