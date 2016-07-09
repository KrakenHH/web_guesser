require 'sinatra'
require 'sinatra/reloader'

num = rand(100)

get '/' do
  "SECRET NUMBER: #{num}"
end