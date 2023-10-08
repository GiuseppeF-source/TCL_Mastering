puts "\n Iterating_Over_List.tcl"

set x "a b c"
puts "Item at index 2 of the list {$x} is: [lindex $x 2] \n"

set i 0 
foreach j $x {
    puts "$j is item number $i in the list $x"
    incr i
}