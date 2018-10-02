require 'sinatra'
require 'sinatra/reloader'

get '/' do
  x = rand(101)
  "The Secret number is #{x}".upcase
end
