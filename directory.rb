
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

 # Declare instance variable so all methods can access it. Set variable equal to an empty array.
 # Make sure it is set outside the loop so it doesn't get reset after the first iteration.

@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
end 

def interactive_menu 
  # repeat until the user exits
  loop do
    print_menu
    process(gets.chomp)
  end
end

# do what the user has asked   
def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students 
    when "3"
      save_students
    when "4"
      load_students
    when "9"     
      exit # this will cause the program to terminate
    else
      puts "I don't know what you mean, try again"
  end  
end

def print_menu
  #print the menu of options and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end
 
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  # Open the file for writing
  file = File.open("students.csv", "w")
  # Iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close  
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << { :name => name, :cohort => cohort.to_sym }
  end
file.close
end

#nothing happens until we call the methods
interactive_menu