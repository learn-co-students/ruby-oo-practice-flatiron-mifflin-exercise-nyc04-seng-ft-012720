class Manager

    attr_reader :name, :department, :age
    ALL = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        ALL << self
    end

    def self.all 
        ALL
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def employees
        Employee.all.select do |employee|
            employee.manager_name == self
        end
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        sum = 0
        self.all.map do |manager|
            sum += manager.age
        end
        sum.to_f / self.all.length
    end

end
