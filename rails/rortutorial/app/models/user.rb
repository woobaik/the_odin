class User < ApplicationRecord
  has_secure_password
  after_initialize :assign_new_token
  attr_accessor :remember_token
  attr_reader :password

  validates :username, presence: true
  validates :password_digest, presence: { message: "password can't be blank!"}
  validates :password, presence: true, length: { minimum: 6, allow_nil: true}
  validates :remember_digest, presence: true

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def assign_new_token
    self.remember_digest = Digest::SHA1.hexdigest(self.class.new_token)
  end

end
