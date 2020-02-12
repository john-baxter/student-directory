def get_students # assume November cohort (right now) as per instructions
  puts "Please enter the name of a student: "
  puts "To finish press 'enter' twice."

  possible_cohorts = [
    :January,
    :February,
    :March,
    :April,
    :May,
    :June,
    :July,
    :August,
    :September,
    :October,
    :Novemeber,
    :December
  ]
  
  students = []
  student = gets.chomp


  while !student.empty? do 
    students << {name: student, cohort: :November}
      if students.count == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
    student = gets.chomp
  end

  return students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_array(people)
  people_printed = 0
  while people_printed < people.count do
    puts "#{people_printed + 1}. #{people[people_printed][:name]} (#{people[people_printed][:cohort]} cohort)"
    people_printed += 1
  end
end

def print_footer(names)
  puts "\nOverall we have #{names.count} great students"
  puts ""
end

def print_specific_initial(people, initial)
  puts "Those whos name begins with #{initial}"
  puts ""
  people.each.with_index(1) do |person, idx|
    if person[:name].chr == initial
      puts "#{idx}. #{person[:name]} (#{person[:cohort]} cohort)"
    end    
  end
end

def print_twelve_minus(people)
  puts "Those with names shorter than 12 characters"
  puts ""
  people.each.with_index(1) do |person, idx|
    if person[:name].length < 12
      puts "#{idx}. #{person[:name]} (#{person[:cohort]} cohort)"
    end    
  end
end

# call the methods
students = get_students
print_header
# print_specific_initial(students, "t")
# print_twelve_minus(students)
print_array(students)
print_footer(students)