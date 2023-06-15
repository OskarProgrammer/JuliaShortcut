using Printf

# macros generate code before program run

macro doMore(n, exp)
    quote               #expressions that would be made
        for i = 1:$(esc(n))                 #hiding how many times expression have to be done
            $(esc(exp))                     #executing the expression
        end
    end
end

@doMore(2, println("Hello"))


macro doWhile(exp)
    @assert exp.head == :while
    esc(quote
        $(exp.args[2])
        $exp
end)
end

z=0
@doWhile while z < 10
    global z += 1
    println(z)
end