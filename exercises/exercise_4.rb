require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store = Store.create([{name: "Surrey", annual_revenue: 224_000, mens_apparel: false, womens_apparel: true}, 
                      {name: "Whistler", annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: true},
                      {name: "Yaletown", annual_revenue: 430_000, mens_apparel: true, womens_apparel: false}])

@mens_store = Store.where(mens_apparel: true)

@mens_store.each do |x|
  puts x.name
  puts x.annual_revenue
end

@womens_store = Store.where(womens_apparel: true, annual_revenue: 0..1_000_000)

@womens_store.each do |x|
  puts x.name
  puts x.annual_revenue
end