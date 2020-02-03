

class Employee
    attr_reader :name, :salary, :manager
#  * `Employee#name`
#  * returns a `String` that is the employee's name
# * `Employee#salary`
#  * returns a `Fixnum` that is the employee's salary 

    @@all = []

   def initialize(name, salary, manager)
     @name = name
     @salary = salary
     @manager = manager
     @@all << self
   end
   def self.all
# * `Employee.all`
#  * returns an `Array` of all the employees
       @@all
   end
   def self.paid_over(ammount)
# * `Employee.paid_over`
#  * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
       all.select do |employee|
                 employee.salary > ammount
       end
   end
   def self.find_by_department(department)
# * `Employee.find_by_department`
#  * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
       all.find do |employee|
                employee.manager.department == department
       end
   end
   def manager_name
 # * `Employee#manager_name`
#  * returns a `String` that is the name of their manager 
       self.manager.name


   end
   def tax_bracket
       @@all.select do |employee|
                 employee.salary < (self.salary + 1000) && employee.salary >(employee.salary - 1000)
       end
# * `Employee#tax_bracket`
#  * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
   end



end
