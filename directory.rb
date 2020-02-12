def get_students_v2 # new version asks for cohort
  puts "Please enter the name of a student"
  puts "To finish press 'enter' twice"

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
    :December,
    :Unknown
  ]
  students = []
  student = gets.chomp

  while !student.empty? do
    puts "Enter #{student}'s cohort ID: "
    cohort_id = gets.chomp
    cohort_id = cohort_id.to_sym
    while !cohort_id.empty? do
      if possible_cohorts.include?(cohort_id)
        students << {name: student, cohort: cohort_id.to_sym, hobbies: [], nationality: "", height: ""}
        break
      else
        students << {name: student, cohort: possible_cohorts[-1], hobbies: [], nationality: "", height: ""}
        break
      end
    end
    if students.count == 1
      puts "Now we have one student"
    else
      puts "Now we have #{students.count} students"
    end
    puts "Enter the name of another student: "
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

def print_twelve_minus(people) # hard coded as below 12 characters.
  puts "Those with names shorter than 12 characters"
  puts ""
  people.each.with_index(1) do |person, idx|
    if person[:name].length < 12
      puts "#{idx}. #{person[:name]} (#{person[:cohort]} cohort)"
    end    
  end
end





# call the methods

students = get_students_v2
print_header
# print_specific_initial(students, "t")
# print_twelve_minus(students)
print_array(students)
print_footer(students)