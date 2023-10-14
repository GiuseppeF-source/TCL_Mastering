## also call hash table
puts "Associative_Array.tcl"
########################### 

# index is rose and value is red
set color(rose) red
set color(sky) blue
set color(medal) gold

# Accessing The array elements
foreach ele [array names color] {
    puts "\n $ele is => $color($ele)"
}


###########################
## Array with set and get  
###########################
puts "\n Associative Array declaretion with set and get"

array set colorobject {
    rose red
    sky blue
    medal gold
    board black
}

#Accessing The array elements 
foreach {obj col} [array get colorobject] {
    puts "\n $obj is => $colorobject($obj)"
}

###########################
## Array element exists ?  
###########################
array set colorcount {
    red 1
    green 5
    blue 4
}

set lst [ list red green blue white]

foreach col $lst {
    catch {info exists $colorcount($col)} ret
    if { 0 == $ret } {
        puts "\n EXIST == $col == whose value is = $colorcount($col)";    
        } else {
            puts "\n NOT EXIST == $col"
            }
}