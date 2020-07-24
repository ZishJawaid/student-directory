=begin
students = [
  {:name => "Dr. Hannibal Lecter", :cohort => :august},
  {:name => "Darth Vader", :cohort => :august},
  {:name => "Nurse Ratched", :cohort => :august},
  {:name => "Michael Corleone", :cohort => :august},
  {:name => "Alex DeLarge", :cohort => :august},
  {:name => "The Wicked Witch of the West", :cohort => :august},
  {:name => "Terminator", :cohort => :august},
  {:name => "Freddy Kreuger", :cohort => :august},
  {:name => "The Joker", :cohort => :august},
  {:name => "Joffrey Baratheon", :cohort => :august},  
  {:name => "Norman Bates", :cohort => :august}
]
=end
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)