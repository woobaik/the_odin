# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username:"haram", email:"haram@gmail.com")
user2 = User.create!(username:"malyun", email:"malyun@gmail.com")
user3 = User.create!(username:"chaos", email:"chipmunk@gmail.com")
user3 = User.create!(username:"Zico", email:"commander@gmail.com")


event1 =Event.create!(event_name:"Haram's birthday", event_description: "It's haram's birthday lets celebrate it!", creator_id: 1 )
event2 =Event.create!(event_name:"malyun's birthday", event_description: "It's malyun's birthday lets celebrate it!", creator_id: 2)
event3 =Event.create!(event_name:"chaos's birthday", event_description: "It's chaos's birthday lets celebrate it!", creator_id: 3)


eu1 = EventsUser.create!(event_id: 1, user_id: 1)
eu2 = EventsUser.create!(event_id: 1, user_id: 2)
eu3 = EventsUser.create!(event_id: 1, user_id: 3)
eu4 = EventsUser.create!(event_id: 2, user_id: 3)
eu5 = EventsUser.create!(event_id: 3, user_id: 4)
eu5 = EventsUser.create!(event_id: 3, user_id: 3)
eu5 = EventsUser.create!(event_id: 3, user_id: 1)
