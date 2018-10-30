class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :events_attendee, foreign_key: :attended_event_id
  has_many :attendees, class_name: "User", foreign_key: :attendees_id, through: :attendies_events
end
