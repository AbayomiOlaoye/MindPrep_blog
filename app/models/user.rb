class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def recent_3_posts
    posts.limit(3).order(created_at: :desc)
  end

  validates :name, presence: true,
                   length: { maximum: 250, too_long: 'Title must not exceed 250 characters' }
  validates_numericality_of :posts_counter, only_integer: true, greater_than_or_equal: 0
end
