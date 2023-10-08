# The upvare command "ties" ( makes an alias )
# the name of a variable in the current scope 
# to a variable in a different scope

# Commonly used to simulate pass-by-referance

proc SetPositive {variable value} {
    upvar $variable myvar
    if {$value < 0} {
        set myvar [ expr {-$value}]
    } else {
        set myvar $value
    }
    return 1
}

SetPositive x 5
SetPositive y -15

puts " X: $x,  Y: $y \n "
