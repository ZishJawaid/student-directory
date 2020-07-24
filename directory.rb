# Let's puts all students in to an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Kreuger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# Iterate across the array and print each name:
puts "The students of Villains Academy"
puts "-------------"
students.each { |name| puts name }

# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"

