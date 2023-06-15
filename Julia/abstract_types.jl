using Printf

abstract type Animal end

struct Dog <: Animal
    name::String
    bark::String
end

struct Cat <: Animal
    name::String
    meow::String
end

bowser = Dog("Bowser", "Ruff")::Dog
muffin = Cat("Muffin", "Meow")::Cat

function makeSound(animal::Dog) # same function but diffrent data type
    println("$(animal.name) says $(animal.bark)")
end

function makeSound(animal::Cat) # same function but diffrent data type
    println("$(animal.name) says $(animal.meow)")
end

makeSound(bowser)
makeSound(muffin)