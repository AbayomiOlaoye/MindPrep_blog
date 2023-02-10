class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :likes

  def recent_3_posts
    posts.limit(3).order(created_at: :desc)
  end

  validates :title, :text, presence: true

  validates :title, presence: true,
                    length: { maximum: 250, too_long: 'Title must not exceed 250 characters' }
  validates_numericality_of :comments_counter, only_integer: true, greater_than_or_equal: 0
  validates_numericality_of :likes_counter, only_integer: true, greater_than_or_equal: 0
end
