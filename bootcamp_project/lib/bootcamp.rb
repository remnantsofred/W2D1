class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = [] } 
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end
        
    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if students.include?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        if @students.include?(student)
            @grades[student].length
        end
    end

    def average_grade(student)
        if @students.include?(student) && @grades[student].length > 0
            sum = 0
            @grades[student].each do |grade|
                sum += grade
            end
            return (sum / @grades[student].length)
        elsif !@students.include?(student) || @grades[student].length == 0
            return nil
        end
    end

end
