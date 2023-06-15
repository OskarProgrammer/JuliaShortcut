using Printf

struct Customer         #our own type
    name::String
    balance::Float64
    id::Int
end

bob = Customer("Bob Smith", 10.50, 1)
println(bob)
println(bob.name)
println(bob.balance)
println(bob.id)


