class User < ApplicationRecord
  validates :username, presence:true, length: { in: 6..12}, uniqueness: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter vaild e-mail address"}
end
