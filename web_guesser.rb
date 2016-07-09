require 'sinatra'
require 'sinatra/reloader'


number = rand(100)

get '/' do
  guess = params['guess'].to_i
  message = check_guess(guess, number)
  erb :index, :locals => {:number => number, :guess => guess, :message => message}
end


def check_guess(guess, number)
  if guess > number
    guess > number+5 ? "Way too high!" : "Too high!"
  elsif guess < number
    guess < number-5 ? "Way too low!" : "Too low!"
  else
    "You got it right!\n
    The secret is number is #{number}."
  end
end


