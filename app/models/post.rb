class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users_like, through: :likes, source: :user

  validates :content, length: { in: 2..50 }
end
