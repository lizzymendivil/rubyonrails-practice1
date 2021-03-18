class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  def index
    @posts = Post.all
  end
end
