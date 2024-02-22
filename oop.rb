class Student
    @first_name
    @second_name
    @email 
    @password
    def to_s(first_name, second_name)
        "first_name: #{first_name} second name is #{second_name}"
    end
end
usama = Student.new
puts usama.to_s("Ahmad", "Awan")
