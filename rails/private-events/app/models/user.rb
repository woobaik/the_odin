class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :attendies_events, foreign_key: :attendee_id, class_name: "AttendiesEvent"
  has_many :attended_events, class_name: 'Event', foreign_key: :attendees_id, through: :attendies_events
end


776 Buckingham Avenue
EUROBOX [EB30089]
Slough
erkshire
SL1 4NL
0176-361-0400
