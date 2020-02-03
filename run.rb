require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("Bill", "Administration", 34)
e1 = Employee.new("Tom", 1001, m1)
m2 = Manager.new("Jordan", "Accounts", 28)
e2 = Employee.new("Chris", 1070, m1)
m3 = Manager.new("Christina", "Accounting", 42)
e3 = Employee.new("Jim", 1010, m2)
e4 = Employee.new("Robert", 8000, m3)
e5 = Employee.new("Boo", 1190, m1)
e6 = Employee.new("Batman", 1430, m2)
e7 = Employee.new("Joe", 1210, m2)
e8 = Employee.new("Diana", 1880, m3)

puts Employee.all.length == 8
puts Manager.all.length == 3
puts Manager.all_departments.length == 3
p Manager.all_departments
p Manager.all
puts Manager.average_age

p e3.manager_name
p e6.manager_name
p e4.manager_name
p m1.employees
p m2.employees
p m3.employees
p m3.hire_employee("Bill", 12000)
p m1.hire_employee("Abishola", 12000)
p m2.hire_employee("Jay-Z", 12000)



top_employees = Employee.paid_over(1000)


p Employee.find_by_department("Accounts")

array1 = e5.tax_bracket


binding.pry
puts "done"
