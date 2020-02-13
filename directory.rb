@students = []

def get_students()
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
  student = gets.chomp

  while !student.empty? do
    puts "Enter #{student}'s cohort ID: "
    cohort_id = gets.chomp
    cohort_id = cohort_id.to_sym
    while !cohort_id.empty? do
      if possible_cohorts.include?(cohort_id)
        @students << {name: student, cohort: cohort_id.to_sym, hobbies: [], nationality: "", height: ""}
        break
      else
        @students << {name: student, cohort: possible_cohorts[-1], hobbies: [], nationality: "", height: ""}
        break
      end
    end
    if @students.count == 1
      puts "Now we have one student"
    else
      puts "Now we have #{@students.count} students"
    end
    puts "Enter the name of another student: "
    student = gets.chomp
  end
  return @students
end

def print_header
  header = "\nThe students of Villains Academy"
  puts header
  puts puts "-" * header.length
end

def print_array()
  people_printed = 0
  if @students.length == 0
    puts "There are no students"
  else
    while people_printed < @students.count do
      puts "#{people_printed + 1}. #{@students[people_printed][:name]} (#{@students[people_printed][:cohort]} cohort)"
      people_printed += 1
    end
  end
end

def print_array_center_80()
  people_printed = 0
  while people_printed < @students.count do
    puts "#{people_printed + 1}. #{@students[people_printed][:name]} (#{@students[people_printed][:cohort]} cohort)".center(80)
    people_printed += 1
  end
end

def print_footer()
  if @students.count == 1
    puts "\nOverall we have one great student"
    puts ""
  else
    puts "\nOverall we have #{@students.count} great students"
    puts ""
  end
end

def print_specific_initial(initial)
  puts "Those whos name begins with #{initial}"
  puts ""
  @students.each.with_index(1) do |person, idx|
    if person[:name].chr == initial
      puts "#{idx}. #{person[:name]} (#{person[:cohort]} cohort)"
    end    
  end
end

def print_twelve_minus() # hard coded as below 12 characters.
  puts "Those with names shorter than 12 characters"
  puts ""
  @students.each.with_index(1) do |person, idx|
    if person[:name].length < 12
      puts "#{idx}. #{person[:name]} (#{person[:cohort]} cohort)"
    end    
  end
end

def print_sorted_by_cohort()
  cohort_hash = {}
  @students.each do |person|
    if cohort_hash.has_key?(person[:cohort]) == false
      cohort_hash[person[:cohort]] = []
    end
    cohort_hash[person[:cohort]].push(person[:name])
  end

  cohort_hash.each do |key, value|
    puts key
    puts value
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "\nMenu:"
    puts "\n1. Input the students"
    puts "2. Show the students"
    puts "3. save the list to students.csv"
    puts "9. Exit"
end

def show_students
  print_header
  print_array()
  print_footer()
end

def process(selection)
  case selection
  when "1"
    get_students()
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else
    puts "Please try again"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "*Saved*"
end

# call the methods
# ----------------
# students = get_students
# print_header
# # print_specific_initial(students, "t")
# # print_twelve_minus(students)
# # print_array_center_80(students)
# print_array(students)
# print_footer(students)
# # print_sorted_by_cohort(students)
interactive_menu