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
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates_associated :store
end

# Note: be careful not to use that validation on both sides of the association!


class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue , numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end


# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
# Ask the user for a store name (store it in a variable)
# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record