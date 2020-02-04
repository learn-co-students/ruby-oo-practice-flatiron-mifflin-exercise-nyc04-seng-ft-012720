require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


abid = Employee.new("Abid", "Nicky", 10)
tom = Employee.new("Tom", "Annie", 30)
firuz = Employee.new("Firuz", "Nicky", 50000)

nicky = Manager.new("Nicky", "Codes", 50)
annie = Manager.new("Annie", "Dogs", 15)


binding.pry
puts "done"
