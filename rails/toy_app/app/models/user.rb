class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true, length: {maximum: 7, minimum: 2 }
  validates :email, presence: true



end
