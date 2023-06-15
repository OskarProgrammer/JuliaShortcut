using Printf


open("random2.txt", "w") do file            #opening file random2.txt if doesnt exist will be created and we are opening this file with mode write
    write(file, "Here is some random text\nIt is great") #writing random text to the file
end  #automatand we are opening this file with mode write
    write(file, "Here is some random text\n It is great") #writing random text to the file
end  #automatically close file

open("random2.txt") do file     #opening file random2.txt to read the data
    data = read(file, String)       # taking data from file with type String 
    println(data)                   #printing that data
end #closing file

open("random2.txt") do file
    for line in eachline(file)
        println(line)
    end
end
