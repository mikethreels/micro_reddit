class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: {message: 'Title post cannot be empty'}
  validates :body, presence: {message: 'Post must have content'}
end
