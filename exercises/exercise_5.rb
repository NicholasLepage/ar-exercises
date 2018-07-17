require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum("annual_revenue")

@all_stores = Store.all

@over_million = @all_stores.where(annual_revenue: 1_000_000..Float::INFINITY).size

@average_revenue = @total_revenue / @all_stores.size

puts "The total revenue of all the stores is #{@total_revenue}"
puts "The average revenue of all the stores is #{@average_revenue}"
puts "The number of stores having a revenue over 1 000 000 is #{@over_million}"