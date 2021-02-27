class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :posts
end
