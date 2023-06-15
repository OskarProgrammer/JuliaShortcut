#Julia jest dynamicznie typowanym jezykiem
using Printf

#Int8: -128    127
#Int16: -32.768    32.767
#Int32: -2.147.483.648     2.147.483.647
#Int64: -2^63   2^63-1
#Float32, Float64, Uint8, Uint16, etc...

bF = 1.111111111
println(bF + 0.11111111)

c1 = 'A' #char

c2 = Char(120) #unicode 
println(c2)

i1 = UInt8(trunc(3.14))
println(i1)

f1 = parse(Float64, "1")
println(f1)

i2 = parse(Int8, "1")
println(i2)

s1 = "Hello world\n"
println(length(s1))

println(s1[1])#first index
println(s1[end])#last index
println(s1[1:4])# from first to fourth

s2 = string("Yukiteru", "Amano") #adding the strings
println(s2)

s3 = string("Yuno" * "Gasai")
println(s3) #adding the strings in other way

i3 = 2
i4 = 3
println("$i3 + $i4 = $(i3 + i4)") #putting variables in print statement


s3 = """i
have
many 
line"""

println(s3)

println("Takao" > "Hiyama") 

println(findfirst(isequal('i'), "Keigo"))  # finding char  in string returing index of first find

println(occursin("key", "monkey")) # finding pattern in string