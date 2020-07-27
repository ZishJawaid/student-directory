
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


def interactive_menu
  # set variable equal to an empty array. Set outside the loop
  # so it exists across many iterations, not just the first iteration
  students = []
  # repeat until the user exits
  loop do
  # print the menu of options and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    # read user input and assign to a variable
    selection = gets.chomp

    # do what the user has asked
    case selection

      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      else
        puts "I don't know what you mean, try again"
    end
  end  
end

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


#nothing happens until we call the methods
interactive_menu