
# put all students in an array
students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"
]

# and then print them

# puts "The students of Villains Academy"
# puts "-------------"
# students.each |student| do
#   puts student
# end
# # then we say how many students we have - without adding line breaks
# puts "Overall we have #{students.count} great students"

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_array(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "\nOverall we have #{names.count} great students"
end

# call the methods
print_header
print_array(students)
print_footer(students)
