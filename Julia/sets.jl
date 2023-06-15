
st1 = Set(["Jim", "Pam", "Jim"])
println(st1)

push!(st1, "Michael") # adding new item to set

println(in("Dwight", st1)) #checking if dwight is in st1

st2 = Set(["Jss", "Dwight"])

println(union(st1, st2)) # adding two sets to them selves

println(intersect(st1, st2)) # interference of two sets

println(setdiff(st1,st2)) # diffrences of two sets