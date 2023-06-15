using Printf

# anonymous function is function without name, normally one liner

v2 = map( x -> x * x, [2,232,32])
println(v2)

v3 = map((x,y) -> x + y, [1,2], [3,4])
println(v3)

v4 = reduce(+, 1:100)
println(v4)

sentence = "This is a string"
sArray = split(sentence)
longest = reduce((x, y) -> length(x) > length(y) ? x : y, sArray) #fiding the longest word in the sentence
println(longest)