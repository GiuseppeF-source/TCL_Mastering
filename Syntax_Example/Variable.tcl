set a_variable 1;

puts "variable A have value $a_variable";

set b_variable 10;

puts "Variable A= $a_variable,  Variable B= $b_variable";

unset a_variable; #deallocata 

if {![info exists a_variable]} {
    puts "A not exist"
    set a_variable 50
    puts "Now A = $a_variable"
}

