require 'bundler/inline'
gemfile true do
    source 'http://rubygems.org'
    gem 'bcrypt'
end
require 'bcrypt'

users = [
    {username: "Usama" , password: "password1" },
    {username: "Ahmad" , password: "password2" },
    {username: "Awan" , password: "password3" },
    {username: "King" , password: "password4" },
    {username: "Maker" , password: "password5" },
]

def create_hash_digest(password)

    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)

end

def create_secure_user(list_of_users)
    list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest( user_record[:password])
    end
    list_of_users
end

puts create_secure_user(users)


# new_password = create_hash_digest("password1")
# puts new_password == "password2"