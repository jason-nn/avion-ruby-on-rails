# rspec student_spec.rb in terminal to run

require './student.rb'

describe Student do
    before :each do
        @name = 'Jason Ho'
        @age = 20
        @grades = [90, 95, 100]
        @average = @grades.sum / @grades.length
        @student = Student.new(@name, @age, @grades)
    end

    it 'should hold and return name' do
        @student.name.should == @name
    end

    it 'should hold and return age' do
        @student.age.should == @age
    end

    it 'should return average' do
        @student.average.should == @average
    end
end
