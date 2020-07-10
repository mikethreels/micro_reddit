class User < ApplicationRecord
    validates :user_name, presence: true, uniqueness: true, length: { maximum: 15 }
    validates :email, presence:true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
