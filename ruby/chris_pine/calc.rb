puts "how many hours are in a year : #{24 * 365}"
puts "how many minutes are in a year : #{60 * 24 * 365 * 10}"
puts "chris pine is 1298million seconds old : #{1298000000 / 60 / 60 / 24 / 365} years old"

puts "5 is my favorite number".to_i
puts 'Who asked you about 5 or whatever?'.to_i

# puts "What's your first name?"
# first_name = gets.chomp
# puts "What's your middle name?"
# middle_name = gets.chomp
# puts "Finally, What is your last name?"
# last_name = gets.chomp
#
# puts "Welcome to basic Ruby #{first_name} #{middle_name} #{last_name}."
# #
# question = gets.chomp
# if question == "raise"
#   puts "Fxxx You!"
# else
#   return true
# end

width = 100
puts "Table of Contents".center(width)
puts ""
puts "chapter 1: Numbers".ljust(width/2) + "page 1".rjust(width/2)
puts "chapter 2: Letters".ljust(width/2) + "page 72".rjust(width/2)
puts "chapter 3: Variabless".ljust(width/2) + "page 118".rjust(width/2)
