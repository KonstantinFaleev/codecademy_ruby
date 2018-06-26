friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
           "Marge" => "mom",
           "Lisa" => "sister",
           "Maggie" => "sister",
           "Abe" => "grandpa",
           "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# Iterating Over Multidimensional Arrays
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end

# Iterating Over Hashes
secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |film, actor|
  puts "#{film}: #{actor}"
end

# Iterating Over a Hash
lunch_order = {
    "Ryan" => "wonton soup",
    "Eric" => "hamburger",
    "Jimmy" => "sandwich",
    "Sasha" => "salad",
    "Cole" => "taco"
}

lunch_order.each do |name, eat|
  puts "#{eat}"
end

# Write a loop that only puts the even values of my_array
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |num| puts num unless num % 2 !=0 }