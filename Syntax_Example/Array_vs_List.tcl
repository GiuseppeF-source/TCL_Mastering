puts "Array_vs_List.tcl"
############################

array set colorcnt {
    red 1
    green 5
    blue 4
    white 9
}

set h2l [array get colorcnt]
puts ">>>> $h2l"
array set l2h $h2l
foreach  {obj col} [array get l2h] {
    puts "\n ##### $obj is => $l2h($obj)"
}