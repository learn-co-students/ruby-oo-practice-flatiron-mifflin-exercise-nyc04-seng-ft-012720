class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name = "", department = "", age = 0)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select{|employee| employee.manager_name == self.name}
    end
    def self.all
        @@all
    end

    def hire_employee(newname, newsalary)
        newhire = Employee.new
        newhire.name = newname
        newhire.salary = newsalary
        newhire.manager_name = self.name
    end

    def self.average_age
        ages = self.all.map{|manager| manager.age}
        ages.reduce(0.0){|total, adder| total + adder} / ages.length
    end


end
