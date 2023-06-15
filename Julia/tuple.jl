using Printf

t1 = (1,2,3,4)

println(t1)
println(t1[1])
for i in t1 println(t1[i]) end

t2 = ((1,2), (3,4))
println(t2[1][1]) # tuple [row] [column]

t3 = (sue = ("Sue", 100), paul = ("Paul", 200))
println(t3.sue[1])
println(t3.sue)