sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {:name => 'usama', :favcolor => 'black'}
p my_details
# p sample_hash ['c']
# sample_hash = {"a" =>1, "b" => 2, "c" => 3}
# puts sample_hash [a, b, c]
# another_hash = {a: 1, b:2, c:3}
my_details.each do |key, value|
puts "the class for key is #{key.class} and the value is #{value.class}"
end