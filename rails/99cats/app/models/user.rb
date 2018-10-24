class User < ApplicationRecord

  # create_table "users", force: :cascade do |t|
  #   t.string "password_digest", null: false
  #   t.string "session_token", null: false
  #   t.string "username", null: false
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["session_token"], name: "index_users_on_session_token", unique: true
  #   t.index ["username"], name: "index_users_on_username", unique: true
  # end

  has_secure_password
  after_initialize :ensure_session_token
  validates :username, presence: true, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true}
  validates :password_digest, presence: { message: "Password can't be blank"}

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.generate_token
    SecureRandom.urlsafe_base64
  end

  def self.find_by_credential(username, password)
    user = User.find_by(username: username)
    return nil if user.nil?
    return user if user.is_password?(password)
  end

  def reset_session_token
    self.session_token = self.class.generate_token
    self.save
  end

  private
  def ensure_session_token
    self.session_token ||= User.generate_token
  end
end
