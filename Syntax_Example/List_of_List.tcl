puts "\n List_of_List.tcl"

# Inserimento di list dentro altre list
set b [list a b { c d e } { f { g h } }]
puts "Treated as a list: $b \n"

# Manipolazione 
# le \ indicheranno che le parentesi {} non sono elementi
set b [split $b]
puts "Trasformed by split: $b \n"

set a [concat a b {c d e} {f {g h}}]
puts "Concated: $a \n"

lappend a {ij K lm}
puts "After lappending: $a \n"

set b [linsert $a 3 "1 2 3"]
puts "After linsert at position 3: $b \n"

set b [lreplace $b 3 5 "AA" "BB"]
puts "After lreplacing 3 positions with 2 values at position 3: $b \n"

set jlst [list a b c [list k l m] p q [list r w]]
puts $jlst
puts [lindex $jlst 3]  ;# stampa k l m
puts [lindex $jlst 6]  ;# stampa r w
puts [lindex [lindex $jlst 6] 1] ;# stampa il secondo elemento della lista in posizone 6
