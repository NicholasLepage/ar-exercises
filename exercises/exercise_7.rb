require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Enter name of new store to add"
new_store_input = gets.chomp.to_s

new_store = Store.new(name: new_store_input)


if new_store.valid?
  new_store.save
else 
  puts new_store.errors.to_a
end

