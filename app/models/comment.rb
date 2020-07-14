class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :title, presence: { message: 'Title for the comment cannot be empty' }
  validates :body, presence: { message: 'Comment must have content' }
end
