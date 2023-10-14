## 
puts "Named_Code_Block.tcl"
###########################

## Costruire blocchi eseguibili in un secondo momento

set Script {
    set Number1 11
    set Number2 34
    set Result [expr $Number1 + $Number2]
    puts "Result: $Result"
}

eval $Script