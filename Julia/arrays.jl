using Printf 

a1 = zeros(Int32, 2, 2)
a2 = Array{Int32}(undef, 5)
a3 = Float64[]
a4 = [1,2,3]


println(a1[1][1])


println(a2[2])


println(a4)
println(a4[1], " ", a4[end])
println("5" in a4) #check if value is in a4


f(a) = (a >= 2) ? true : false
println(findall(f, a4))

println(count(f,a4)) # check how many times function found 

println(length(a4)) # return length of array
println(sum(a4)) # return sum of the value in array
println(size(a4)) # return size of the array (columns rows)

splice!(a4, 2:1, [8,9]) # putting values into array by the index
# splice!(array, start:end, [values to put inside])
println(a4)

splice!(a4, 2:3) # deleting indexes from start to end (2 to 3)
println(a4)

println(maximum(a4)) # return maximum value from the array
println(minimum(a4)) # return minimum value from the array

println(a4 * 2) # multipling all values in the array
a4 = a4 * 2
println(a4)

a5 = Any["hello", 2 , true, 'a']
println(a5)

a6 = [sin, cos, tan]
for n in a6
    println(n(0)) #return the sin(0) , cos(0) , tan(0)
    #literally you can put mathematican functions into the array THATS AMAZING
end

a7 = [1 2 3; 4 5 6]
for n = 1:2, m = 1:3 #n rows, m columns
    @printf("%d ",a7[n,m]) #looking for multi dimensional arrays
end
println()

println(a7[:, 2]) # array[row, column]
println(a7[2, :]) # array[row, column]

a8 = collect(1:5) # range 1 to 5
println(a8)

a9 = collect(2:2:10) # range 2 to 10 with jump 2
for n in a9 print(n, " ") end
println()

a10 = [n^2 for n in 1:5] # list comprehension
for n in a10 print(n, " ") end
println()

push!(a10, 36) #adding value to last index
println(a10)

a11 = [n * m for n in 1:5, m in 1:5] #multi dimensional array
println(a11)

a12 = rand(0:9, 5, 5) # 5 by 5 array with random values
for n = 1:5
    for m = 1:5
        print(a12[n,m]) # array [row, column]
    end
    println()
end