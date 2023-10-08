# Declaration method:
# First way
set myList1 [list a b c]
# Second way
set myList2 "a b c"
# Third way
set myList3 {a b c}
# Fourth way ( when use procedure )
set a 1; set b 2; set c 3;
set myList4 [list $a $b $c]
# Fifth way 
set myList5 { $a $b $c }



# Split Example
# rimuove / dalla stringa
set mlst [split "C:/WORK/TCL_Mastering" "/"]
puts $mlst
set lst [list 0 1 2 3 4 5 6 7]
puts "The index is: [lindex $lst 3]"

# Concat Example
# concatena 8 9 10 a lst
set lst2 [concat $lst { 8 9 10 }]
puts $lst2

# Append Example
# accoda lista a lista 
lappend lst2 11 12 13 14
puts $lst2

# Insert Example 
# inserisce un valore all'inizio ( prima di indx 0)
set lst2 [linsert $lst2 0 "-1"]
puts $lst2

# Replace Example
# sostituisce singolo valore ( da posizione 2 a posizione 2 )
set lst2 [lreplace $lst2 2 2 "30"]
puts $lst2


# lset Example
# manipola valori della lista
lset lst2 end 15; #in questo caso inserisce 15 al posto di 14
puts $lst2

# llength Example 
# restituisce la lunghezza di una lista
set len [llength $lst2]
puts "\n Length of lst2 = $len"
 

# Procedure for sorting list
source Sort.tcl

# Procedure for iterating over a list
source Iterating_Over_List.tcl

# Procedure and manipulation of Lists in Lists
source List_of_List.tcl

# Searching element in List
source Searching_Element_in_List.tcl