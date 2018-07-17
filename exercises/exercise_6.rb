require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Nicholas", last_name: "Lepage", hourly_rate: 200)
Employee.create(first_name: "Ahh", last_name: "Man", hourly_rate: 200)
@store2.employees.create(first_name: "Big", last_name: "Boi", hourly_rate: 150)
@store2.employees.create(first_name: "Leona", last_name: "Dider", hourly_rate: 300)
@store2.employees.create(first_name: "Michael", last_name: "Jackson", hourly_rate: 40)