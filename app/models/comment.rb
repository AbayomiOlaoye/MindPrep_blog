class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  after_save :update_comments_counter

  private

  def update_comments_counter
    post.increment!(:comments_counter)
  end
end