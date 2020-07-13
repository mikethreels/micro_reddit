class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :user_name, uniqueness: { message: 'User has been already taken' },
                        length: { maximum: 15, message: 'User must be maximum 15 char long' },
                        presence: { message: 'User cannot be empty' }
  validates :email, presence: { message: 'User cannot be empty' },
                    uniqueness: { message: 'Email already exists' },
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Please enter a valid email' }
    end
