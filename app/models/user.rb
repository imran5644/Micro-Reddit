class User < ApplicationRecord
  validates :username, presence: { message: 'must be given please' }
  validates :username, length: { minimum: 5 }
  validates :username, uniqueness: { scope: :username, message: 'This username is taken!' }
  validates :username, format: { with: /\A[0-9A-Za-z]+\z/, message: 'alphanumeric only!' }
  has_many :posts
  has_many :comments
end
