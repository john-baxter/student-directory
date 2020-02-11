
# put all students in an array
students = [
  {name: "Dr. Hannibal Lecter",          cohort: :november},
  {name: "Darth Vader",                  cohort: :november},
  {name: "Nurse Ratched",                cohort: :november},
  {name: "Michael Corleone",             cohort: :november},
  {name: "Alex DeLarge",                 cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator",                   cohort: :november},
  {name: "Freddy Krueger",               cohort: :november},
  {name: "The Joker",                    cohort: :november},
  {name: "Joffrey Baratheon",            cohort: :november},
  {name: "Norman Bates",                 cohort: :november}
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

def print_array(people)
  people.each do |person|
    puts "#{person[:name]} (#{person[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "\nOverall we have #{names.count} great students"
  puts ""
end

# call the methods
print_header
print_array(students)
print_footer(students)
