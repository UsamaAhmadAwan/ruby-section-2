require 'bundler/inline'
gemfile true do
    source 'http://rubygems.org'
    gem 'bcrypt'
end
# require 'bcrypt'

# class User < ActiveRecord::Base
#   # users.password_hash in the database is a :string
#   include BCrypt

#   def password
#     @password ||= Password.new(password_hash)
#   end

#   def password=(new_password)
#     @password = Password.create(new_password)
#     self.password_hash = @password
#   end
# end
require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")
puts my_password
puts my_password_1
puts my_password_2

puts my_password == "my_password"
#=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"
# puts my_password
# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

#  my_password = BCrypt::Password.new("$2a$12$tE/k0N4kMYPPTJxBwjHwUO.1UFg3nBj4CGT9StQ5DnHg/CWFjF8JW")
# puts my_password == "my password"     #=> true
# my_password == "not my password" #=> false