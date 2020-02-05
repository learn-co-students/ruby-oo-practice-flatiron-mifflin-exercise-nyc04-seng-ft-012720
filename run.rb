require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

# MANAGER
abid = Manager.new("Abid", "Google Sites", 23)
tom = Manager.new("Tom", "Google Sheets", 31)
mavi = Manager.new("Mavi", "Google Docs", 25)

# EMPLOYEE
gurjot = abid.hire_employee("Gurjot", 100_000)
firuz = abid.hire_employee("Firuz", 99_000)
abid.hire_employee("Jemy", 89_000)

tom.hire_employee("Phil", 101_000)
tom.hire_employee("Kan", 101_000)
tom.hire_employee("Dimitri", 100_000)

mavi.hire_employee("Wesley", 88_000)
mavi.hire_employee("Dayrl", 87_000)

# pp abid.employees
# p Manager.all_departments
# p Manager.average_age

# pp Employee.paid_over(95_000)
# pp Employee.find_by_department("Google Docs")

# pp gurjot.tax_bracket
pp firuz.tax_bracket