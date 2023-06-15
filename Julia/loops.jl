using Printf

i = 1 

while i < 20
    if (i % 2 == 0)
        println("Even $i")
    else
        println("Odd $i")
    end    

    global i += 1 # odnoszenie sie do liczby spoza while

    continue

end

for i = 1:5       # od 1 do 5 wlacznie
    println(i)
end

for i in [2,4,6]  #iteracja po liscie
    println(i)
end

for i = 1:5, j = 2:2:10  #  start:jump:end
    @printf("%i, %i \n", i, j)
end