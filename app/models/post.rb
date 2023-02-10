class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  after_save :update_post_counter

  private

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  public

  def recent_5_comments
    comments.limit(5).order(created_at: :desc)
  end
end
