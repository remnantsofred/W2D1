class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end
    
    def age
        @age
    end
    
    def bark
        @bark
    end
    
    def name
        @name
    end
    
    def favorite_foods
        @favorite_foods
    end
    
    def age=(number)
        @age = number
    end

    def bark
        if @age > 3
            return @bark.upcase 
        else
            return @bark.downcase
        end
    end

    def favorite_food?(str)
        favorite_foods.map! { |food| food.downcase }
        str = str.downcase
        favorite_foods.include?(str)
    end

end
