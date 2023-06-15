using Printf

println("Enter a number: ")
num1 = chomp(readline())

println("Enter a number: ")
num2 = chomp(readline())

try             # try catch clause
    val = (parse(Int32, num1)) / (parse(Int32, num2))
    if (val == Inf)
        error("Never divide by zero") #our own error, throwing exception
    else
        println(val)
    end
catch e
    println(e)
end