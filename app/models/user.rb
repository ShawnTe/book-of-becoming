class User < ActiveRecord::Base
  # include BCrypt

  has_many :posts
  has_many :tags

  # validates :password_digest, length: { minimum: 8 }
  validates_presence_of :first_name
  has_secure_password

# Replaced with has_secure_password
  # def password
  #   @password ||= Password.new(password_digest)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_digest = @password
  # end

end
