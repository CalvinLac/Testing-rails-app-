class User < ApplicationRecord
  # validates :username, :uniqueness => true
  has_many :posts

  def post_count
    posts.count
  end
end
