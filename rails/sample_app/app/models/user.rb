class User < ApplicationRecord
  before_save {self.email = self.email.downcase}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates_presence_of :name, :email
  validates :name, length: { maximum: 15}
  validates :email, length: { maximum: 255}, format: { with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
