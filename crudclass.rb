require_relative 'crudmodule'
class Student
include Crud

    attr_accessor :first_name, :second_name, :email, :password

    def initialize(first_name, second_name, email, password)
        @first_name= first_name
        @second_name= second_name
        @email= email
        @password= password
      end
      def to_s
        "first_name: #{@first_name}, second_name: #{@second_name}, email: #{@email}, password: #{@password}"
    end

    end

usama = Student.new("usama", "awan", "usama@example", "password123")
ali = Student.new("ali", "jutt", "ali@example", "password12345")
hashed_password = usama.create_hash_digest(usama.password)
puts hashed_password