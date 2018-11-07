# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airport_list = %w(SFO ICN NYC SJO LAX LAS IAD BWI)
airport_list.each do |airport|
  Airport.create!(name: airport)
end
#
# t.datetime "start_time"
# t.time "flight_duration"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "from_airport_id"
# t.integer "to_airport_id"

Flight.create!(start_time: Time.now - 2.hour,
               from_airport_id: 4,
               to_airport_id: 2)
Flight.create!(start_time: Time.now - 1.hour,
               from_airport_id: 2,
               to_airport_id: 7)
Flight.create!(start_time: Time.now - 5.hour,
               from_airport_id: 4,
               to_airport_id: 1)
Flight.create!(start_time: Time.now - 7.hour,
               from_airport_id: 4,
               to_airport_id: 8)
Flight.create!(start_time: Time.now - 9.hour,
               from_airport_id: 3,
               to_airport_id: 1)
Flight.create!(start_time: Time.now + 1.hour,
               from_airport_id: 1,
               to_airport_id: 3)
Flight.create!(start_time: Time.now + 4.hour,
               from_airport_id: 5,
               to_airport_id: 1)
