
foreach color {red orange yellow green} {
    puts $color
    after 200
    update
}

# Defining a List separately
set lstColors "red dark yellow green blue purple"
foreach color $lstColors {
    puts $color
    after 200
    update
} 

# Defining a List of file
set tclfiles [glob *.tcl]
foreach fileName $tclfiles {
    puts "File = $fileName"
}

# This may be used as a look up table
set number "uno due tre quattro cinque sei sette"
foreach {a b c} $number {
    puts "$c--$b--$a"
    after 300
    update
}