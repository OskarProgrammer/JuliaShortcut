using Printf

getSum(x,y) = x + y # single expression function lambda
x, y = 1, 2

println(getSum(x,y))
@printf("%d + %d = %d\n", x , y, getSum(x,y))


function canIVote(age=16)
    if age >=18
        println("You can vote")
    else
        println("YOu cant vote")
    end
end

canIVote(43)


v1 = 5
function changeV1(v1)
    global v1 = 10 # change global value of the variable
end
changeV1(v1)

println(v1)


function getSum2(args...) #unlimited arguments
    sum = 0
    for a in args
        sum += a
    end
    println(sum)
end
getSum2(2,23,2,323,2)


function next2(val)
    return (val + 1), (val + 2)
end
x, y = next2(4)
println(x, " ", y)



function makeMultiplier(num)
    return function(x) return x * num end  #giving another argument for that function
end
println(makeMultiplier(2)(2)) #giving two arguments to two diffrent functions inside 

mult3 = makeMultiplier(3) #creating a multiplier by 3
println(mult3(6))



function getSum3(num1::Number, num2::Number) #funciton for numbers 
    return num1 + num2
end

function getSum3(num1::String, num2::String) # the same functions but with diffrent types of arguments... function for strings
    return parse(Int32, num1) + parse(Int32, num2) #converting the strings to Int32
end

println(getSum3(2,3))
println(getSum3("2","3"))
