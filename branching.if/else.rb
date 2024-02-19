# if else
# condition = false
# another_condition = false
# if !condition || another_condition

#     puts "this evaluated is true"
# else
#     puts "this evaluated is false"
# end
# puts "Moye Moye"

# name = "usama"
# if name == "awan"
#     puts "welcome to the program, awan"
# elsif name ==  "ahmad" 
#     puts "welcome to the program, usama"
# elsif name == "usama" 
#     puts "Go to back helping student, usama"
# else
#     puts "welcome to the program, Uesr"       
# end

puts "Simple Calculator"
15.times {print "-"}

puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "what do you want to do?"
puts "enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp
# puts "you selected #{user_entry}"   
if user_entry == "1"
        puts "you have choosen a multiply" 
    elsif user_entry == "2"
        puts "you have choosen a addition"
    elsif user_entry == "3"
        puts "you have choosen a subtraction"
    else
        puts "invalid entry"    
    end        
        