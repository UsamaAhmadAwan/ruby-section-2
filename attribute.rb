class Student
    attr_accessor :first_name, :second_name, :email, :password
    # attr_reader :password
    # @first_name
    # @second_name
    # @email 
    # @password

    def initialize(first_name, second_name, email, password)
      @first_name= first_name
      @second_name= second_name
      @email= email
      @password= password
    end

    # def first_name=(name)
    #     @first_name = name
    # end

    # def first_name
    #     @first_name
    # end
    # def set_password
    #     @password = "password"

    # end

    def to_s
        "first_name: #{@first_name}, second_name: #{@second_name}, email: #{@email}, password: #{@password}"
    end

    end

usama = Student.new("usama", "awan", "usama@example", "password123")
ali = Student.new("ali", "jutt", "ali@example", "password12345")
puts usama
puts ali
usama.second_name = ali.second_name
puts "usama is alternative"
puts usama
# puts usama
# usama.first_name = "usama"
# usama.second_name = "awan"
# usama.email = "usama@example.com"
# usama.password = "password123"
# usama.set_password
# puts usama.first_name
# puts usama.second_name
# puts usama.email
# puts usama.password
