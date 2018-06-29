require 'httparty'
require 'json'
require 'pry'

def menu
puts 'Press 1 to view all users'
puts 'Press 2 to view a single user'
@option = gets.to_i
end

def options
  if @option === 1
    response = HTTParty.get('http://json-server.devpointlabs.com/api/v1/users')
    puts response
  elsif @option === 2
    single_user
  else
    puts 'Invalid input'
    exit
  end
end

def single_user
  response = HTTParty.get('http://json-server.devpointlabs.com/api/v1/users/171')
  puts response
end

menu
options




