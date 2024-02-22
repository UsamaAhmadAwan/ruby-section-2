dial_book = {
    "newyork" => "212" ,
    "newbrunwick" => "732" ,
    "edison" => "908" ,
    "plainsboro" => "609" ,
    "sanfrancisco" => "301" ,
    "miami" => "305" ,
    "paloalto" => "650" ,
    "evanston" => "847" ,
    "or lando" => "407" ,
    "lancaster" => "717" ,
}
# get city names from the hash
def get_city_names(somehash)    
 somehash.keys

end
# get area code based on given hash and key
def get_area_code(somehash, key)
 somehash[key]

end
# execution flow
loop do
    puts "do you want a  lookup area code based on a city names?(Y/N)"
    answers = gets.chomp.downcase
    break if answers != "y"  
    puts "which city do you want to lookup the areacode for?"
      puts get_city_names(dial_book)
      puts "enter your selection"
      prompt = gets.chomp
      if dial_book.include?(prompt)
        puts "the area code for #{prompt} and is #{get_area_code(dial_book, prompt)}"
        else
           puts "you enter a invalid city name"
        end    

end
# get_city_names(dial_book)