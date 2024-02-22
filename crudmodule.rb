require 'bundler/inline'
gemfile true do
    source 'http://rubygems.org'
    gem 'bcrypt'
end

module Crud

require 'bcrypt'
puts "module Crud activated"

# users = [
#     {username: "Usama" , password: "password1" },
#     {username: "Ahmad" , password: "password2" },
#     {username: "Awan" , password: "password3" },
#     {username: "King" , password: "password4" },
#     {username: "Maker" , password: "password5" },
# ]

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

# new_users = create_secure_user(users)
# puts new_users

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
       if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record

       end

       end
       "Credential were not correct"
    end
end

    # p authenticate_user("Usama", "password7", new_users)