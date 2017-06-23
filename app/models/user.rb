class User < ApplicationRecord
  has_many :images
  has_many :comments
  validates :username, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 6 }
  has_secure_password
end
