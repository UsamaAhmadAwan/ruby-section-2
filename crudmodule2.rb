require_relative 'crudmodule'
users = [
    {username: "Usama" , password: "password1" },
    {username: "Ahmad" , password: "password2" },
    {username: "Awan" , password: "password3" },
    {username: "King" , password: "password4" },
    {username: "Maker" , password: "password5" },
]

hashed_users = create_secure_user(users)
puts hashed_users