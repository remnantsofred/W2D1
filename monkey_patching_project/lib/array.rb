# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length == 0
            return nil
        else
            self.max - self.min
        end
    end

    def average
        if self.length == 0
            return nil
        else
            sum = 0.0
            self.each do |num|
                sum += num
            end
            sum / (self.length)
        end
    end

    def median
        self.sort!
        if self.length % 2 != 0
            self[(self.length)/2]
        elsif
            self.length == 0
            nil
        else
            (self[(self.length-1)/2] + self[(self.length)/2]) / 2.0
        end
    end

    def counts
        counts = Hash.new(0)
        self.each { |ele| counts[ele] += 1 }
        counts
    end

    def my_count(val)
        count = 0
        self.each do |ele|
            if ele == val
                count += 1
            end
        end
        count
    end

    def my_index(val)
        self.each_with_index do |ele, i|
            if ele == val
                return i
            end
        end
        nil
    end

    def my_uniq
        uniq = []
        self.each do |ele|
            if !uniq.include?(ele)
                uniq << ele 
            end
        end
        uniq
    end

    
    def my_transpose
        transposed = Array.new (self.length) { Array.new(self.length) } 
        self.each_with_index do |subarr, i|
            subarr.each_with_index do |ele, j|
                transposed[j][i] = subarr[j]
            end
        end
        transposed
    end   

end
