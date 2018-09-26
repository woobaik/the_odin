require 'csv'
puts "EventManage initialized!"

contents = CSV.open("event_attendees.csv", headers: true, header_converters: :symbol)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  if zipcode.nil?
    zipcode = "00000"
  elsif zipcode.length < 5
    zipcode.rjust(5,"0")
  elsif zipcode.length > 5
    zipcode = zipcode[0..4]
  end
  puts name
  puts zipcode



end
