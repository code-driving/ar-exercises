require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Donald", last_name: "Duck", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Miller", hourly_rate: 70)
@store1.employees.create(first_name: "David", last_name: "Jacobs", hourly_rate: 80)
@store1.employees.create(first_name: "Dan", last_name: "Dow", hourly_rate: 50)

@store2.employees.create(first_name: "Jake", last_name: "Anderson", hourly_rate: 80)
@store2.employees.create(first_name: "Jane", last_name: "Anderson", hourly_rate: 80)
@store2.employees.create(first_name: "Rohald", last_name: "Jacobs", hourly_rate: 80)
@store2.employees.create(first_name: "John", last_name: "Fingerote", hourly_rate: 80)
