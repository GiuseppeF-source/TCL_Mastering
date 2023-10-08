# Access to local variable

# Access to global variable

set a 2
set b 3
set c 4

puts "\n a = $a,  b = $b, c = $c.";
proc var_scope {} { 
    global a
    set a 20 
    set ::b 30
    set c 100
}

var_scope;
puts "\n a = $a,  b = $b, c = $c.";
# non viene stampato c = 100 ma 4
# si accede alle variabili globali con global 
# oppure con :: 