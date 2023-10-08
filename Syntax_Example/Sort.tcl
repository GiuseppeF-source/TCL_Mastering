puts "\n Sort.tcl"

set lst2 [list 0 2 1 3 4 5 6 7 8 9 10 11 12 13 14]

# lsort example
# procedura di ordinamento 
# default incremental
set sort_lst2_asci [lsort -ascii $lst2]
puts $sort_lst2_asci

set sort_lst2_int [lsort -integer $lst2]
puts $sort_lst2_int

set sort_lst2_int_dec [lsort -integer -decreasing $lst2]
puts $sort_lst2_int_dec

set sort_lst2_dic [lsort -dictionary $lst2]
puts $lst2


# with real number
set rlst "0.01 0.002 0.2 0.4 0.3 0.0015"
set rlst [lsort -real $rlst]
puts $rlst