
# For upcounting 
for {set i 0} {$i < 10} {incr i}{
    puts "I am at count $i and going up"
    after 200
    update
}

#For downcounting
for {set i 0} {$i > 0} {incr i-1} {
    puts "I am at count $i and going down"
    after 200
    update
}

# For increment other than 1
for {set i 0} {$i < 100} {incr 5} {
    puts "I am at count $i and going down"
    after 200
    update
}