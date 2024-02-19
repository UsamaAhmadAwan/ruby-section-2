def multiply(first_number,second_number)
    first_number.to_f * second_number.to_f
end

def divide(first_number,second_number)
    first_number.to_f / second_number.to_f
end

def subtracted(first_number,second_number)
    first_number.to_f - second_number.to_f
end

def added(first_number,second_number)
    first_number.to_f + second_number.to_f
end

def mod(first_number,second_number)
    first_number.to_f % second_number.to_f
end

puts "Simple Calculator"
15.times {print "-"}

puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "the first number multiplied by the second number is #{multiply(first_number,second_number)}"
puts "the first number divided by the second number is #{divide(first_number,second_number)}"
puts "the first number subtracted by the second number is #{subtracted(first_number,second_number)}"
puts "the first number added by the second number is #{added(first_number,second_number)}"
puts "the first number mod by the second number is #{mod(first_number,second_number)}"