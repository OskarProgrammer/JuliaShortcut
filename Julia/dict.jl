using Printf

d1 = Dict("pi"=>3.14,"e"=>2.718)

println(d1["pi"])
d1["golden"] = 1.618 # adding new key and value

delete!(d1, "pi") # deleting the key and value by key
println(d1)

println(haskey(d1, "pi")) # checking if the key exists

println(in("pi"=>3.14)) #checking if key and value are in the disctoary

println(keys(d1)) # printing keys
println(values(d1)) # printing values

for kv in d1    # looping by the key kv
    println(kv) # printing the value by key kv
end

for (key, value) in d1 # looping through the d1 with key and value
    println(key, " : ", value)
end