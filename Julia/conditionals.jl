using Printf

age = 12

if age >= 5 && age <= 6
    println("You are in the Kindergarten")
elseif age >=20
    println("You are on university")
else
    println("You are kid")
end

@printf("true || false = %s\n", true || false ? "true" : "false") #formatted string
@printf("!true = %s\n", !true ? "true" : "false") #formatted string