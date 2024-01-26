# ARRAY EM RUBY
fruits = ["apple", "banana", "orange"]

# Hash
person = { "name" => "John", "age" => 25 }

# puts(person)

# Programação orientada a objetos
# o @ é como se fosse this.name, ou self.name; 

class Dog
    def initialize(name)
        @name = name
    end

    def bark
        puts "\nMy name is #{@name} and i Woof, woof!\n"
    end
end

my_dog = Dog.new("Buddy")
my_dog.bark