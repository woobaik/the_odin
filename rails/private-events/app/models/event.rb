class Event < ApplicationRecord
  belongs_to :creator,
    foreign_key: :creator_id,
    class_name: "User"

  has_many :events_users

  has_many :attendees,
    through: :events_users,
    source: :user

  
end
