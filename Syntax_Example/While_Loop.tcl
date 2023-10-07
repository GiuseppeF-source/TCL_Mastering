set i 0;

 while {$i < 100} {
    incr i;
    if {$i == 85} {
        puts "Now $i is 85";
        continue;
    } elseif {$i == 90} {
        puts "I am getting out the loop";
        break;
    } else {
        puts "I am at count $i";
    }
 }