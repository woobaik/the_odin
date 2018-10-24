class User < ApplicationRecord
  after_initialize :ensure_session_token
  has_secure_password
  validates_presence_of :username, :session_token
  validates_presence_of :password_digest, { message: 'Password can\'t be blank.'}
  validates :password, length: { minimum: 6, allow_nil: true }



  def self.generate_token
    SecureRandom.urlsafe_base64
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = self.class.generate_token
    self.save!
    self.session_token
  end

  def self.find_by_credentials(username,password)
    user = User.find_by(username: username)
    return nil if user.nil?
    user.is_password?
  end

  private
  def ensure_session_token
    self.session_token ||= User.generate_token
  end
end
