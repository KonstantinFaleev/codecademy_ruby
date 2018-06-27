multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)

#---------------------
def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)

#----------------------
hi = Proc.new { puts "Hello!"}
hi.call

#-----------------------
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

#-----------------------
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |x| x.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

#-----------------------
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols

#-----------------------
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

# Add your code below!

ints = odds_n_ends.select {|x|x.is_a? Integer}

puts ints

#-----------------------
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |x| x < 100 }
youngsters = ages.select(&under_100)

puts youngsters

#-----------------------
crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M"}
a_to_m = crew.select(&first_half)
puts a_to_m