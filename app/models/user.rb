class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { maximum: 500 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password, length: { in: 8..16 }

  has_one :profile
  has_many :posts
  has_many :comments
end
