class Employee
    attr_accessor :name, :manager_name, :salary
    @@all = []

    def initialize(name = "", manager_name = "", salary = 0)
        @name = name
        @manager_name = manager_name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select{|employee| employee.salary > amount}
    end

    def self.find_by_department(dept)
        Manager.all.find{|manager| manager.department == dept}.employees[0]
    end

    def tax_bracket
        @@all.select{|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000)}
    end
    
end
