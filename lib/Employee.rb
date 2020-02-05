class Employee
    
    attr_reader :name, :salary, :manager_name
    ALL = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        ALL << self
    end

    def self.all 
        ALL
    end

    def self.paid_over(num)
        self.all.select do |employee|
            employee.salary > num
        end
    end

    def self.find_by_department(department)
        self.all.find do |employee|
            employee.manager_name.department == department
        end
    end

    def tax_bracket
        self.class.all.select do |employee|
            self.salary - 1_000 <= employee.salary && employee.salary <= self.salary + 1_000
        end
    end

end
