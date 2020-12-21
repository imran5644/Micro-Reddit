class Comment < ApplicationRecord
  validates :content, presence: true
  belongs to :user
  belongs to :post
end
