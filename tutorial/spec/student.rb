class Student
    attr_accessor :name, :age

    def initialize(name, age, grades)
        @name = name
        @age = age
        @grades = grades
    end

    def average
        @grades.sum / @grades.length
    end
end
