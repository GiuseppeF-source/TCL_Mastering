# Not Void Declaration
proc add {a b} {
    return [expr $a + $b]
}
# Usage
set sum [add 5 8];
puts "The sum is === $sum"; 



# Void procedure declaration
proc separator {} {
    puts "========="
}
# Usage
separator;