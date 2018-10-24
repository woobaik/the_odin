class User < ApplicationRecord
  attr_accessor :remember_token
  before_save {self.email = self.email.downcase}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates_presence_of :name, :email
  validates :name, length: { maximum: 15}
  validates :email, length: { maximum: 255}, format: { with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def self.digest(string)
    BCrypt::Password.create(string)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?
    BCrypt::Password.new(remember_diest).is_password?(remember_token)
  end
end
