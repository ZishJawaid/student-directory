# Let's puts all students in to an array
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

print_header
print(students)
print_footer(students)