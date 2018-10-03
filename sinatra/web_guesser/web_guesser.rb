require 'sinatra'
require 'sinatra/reloader'

get '/' do
  guess = params["guess"]
  number = rand(100)
  erb :index, :locals => {:number => number}
  throw params.inspect

end
