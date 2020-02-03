

class Manager
    attr_reader :name, :department, :age
#  * `Manager#name`
#  * returns a `String` that is the manager's name
# * `Manager#department`
#  * returns a `String` that is the department that the manager oversees
# * `Manager#age`
#  * returns a `Fixnum` that is the age of the manager 
        @@all = []
    
       def initialize(name, department, age)
         @name = name
         @department = department
         @age = age
         @@all << self
       end
       def self.all
 # * `Manager.all`
#  * returns an `Array` of all the managers
           @@all
       end
       def employees
# * `Manager#employees`
#  * returns an `Array` of all the employees that the manager oversees
           Employee.all.select do |employee|
                employee.manager == self
           end
       end
       def hire_employee(name, salary)
# * `Manager#hire_employee`
#  * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
           Employee.new(name, salary, self)
       end 
       def self.all_departments
# * `Manager.all_departments`
#  * returns an `Array` of all the department names that every manager oversees
           all.map do |manager|
               manager.department
           end


       end 
       def self.average_age
# * `Manager.average_age`
#  * returns a `Float` that is the average age of all the managers
           ages = 0
           all.each do |manager|
               ages += manager.age
           end
           ages.to_f/all.length.to_f


       end

end
