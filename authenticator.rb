users = [
    {username: "usama" , password: "password1" },
    {username: "ahmad" , password: "password2" },
    {username: "awan" , password: "password3" },
    {username: "king" , password: "password4" },
    {username: "maker" , password: "password5" },
]
def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
            
        #else
            #return "credintials were not correct"
        end
    end
    "credintials were not correct"
end

puts "welcome to the authenticator"
25.times { print "-"}
puts
puts "the progrom will be take input from the user and compare password"
puts "if password is correct, you will get back the user object"

attempts = 1
while attempts < 4
    print "username: "
    username = gets.chomp
    print "password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    # users.each do |user|
    #     if user[:username] == username && user[:password] == password
    #         puts user
    #         break
    #     else
    #         puts "credintials were not correct"
    #     end
        #end
    puts "press n to quit or any other key to continue"
input = gets.chomp.downcase
# if input == "n"
#     break
# end
break if input == "n"
attempts += 1
end  
puts "you have exceeded the number of attempts" if attempts == 4
  