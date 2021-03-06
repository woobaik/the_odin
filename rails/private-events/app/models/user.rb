class User < ApplicationRecord
  has_many :created_events,
    foreign_key: :creator_id,
    class_name: "Event"

  has_many :events_users

  has_many :attending_events,
    through: :events_users,
    source: :event

end
