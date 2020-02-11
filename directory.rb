
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

puts "The students of Villains Academy"
puts "-------------"
students.each |student| do
  puts student
end
# then we say how many students we have - without adding line breaks
puts "Overall we have #{students.count} great students"
