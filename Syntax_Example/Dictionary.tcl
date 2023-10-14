## 
puts "Dictionary.tcl"
########################### 

# Provides efficient access to key-value pairs
# Dictionary is like associative array, but order of sequence is not important
# Dictionaries can be passed on to a procedure
# Unlike array, dictionaries can nest dictionaries
# Hence Dictionary help you to build complicated data structures, such as hierarchical databases

# Example
set FT [ dict create .txt Text .jpg Image .zip ZipArchive .doc Document]

# adding key-value pairs
dict set FT .mp3 Music  

# dict-for loop: special for loop for dictionaries Only
dict for { ext desc } $FT {
    puts "\n $desc file have extn: $ext"
}
puts "\n ====== with foreach ======"
foreach { ext desc} $FT {
    puts "\n $desc file have extn: $ext"
}

###########################
## Dict Exists  
###########################
set lst [list .txt .ogg]
foreach ele $lst {
    puts "checking for $ele ====> \n"
    if { [ dict exists $FT $ele ] } {
        puts "\t Key == $ele exists"
    } else {
        puts "\t Key == $ele NOT exists"
    }
}

###########################
## Complex Data Structure  
###########################
puts "\n ====== Complex Data Structure ====== \n"
# Employee Database (1:many mapping using dictionary)
# Data for one employee
dict set employeeInfo 12345-A forenames "Giuseppe"
dict set employeeInfo 12345-A surname "Ferraro"
dict set employeeInfo 12345-A street "Viale Europa"
dict set employeeInfo 12345-A city "Milan"
dict set employeeInfo 12345-A phone "123-45"
#
dict set employeeInfo 98372-j forenames "Mario"
dict set employeeInfo 98372-j surname "Rossi"
dict set employeeInfo 98372-j street "Viale America"
dict set employeeInfo 98372-j city "NY"
dict set employeeInfo 98372-j phone "555-1234"

    #############################################
    ## First method to iterate and pick out name  
    #############################################
set i 0 
puts "There are [dict size $employeeInfo] employees"
dict for {id info} $employeeInfo {
    puts "Employee #[incr i]: $id"
    dict with info {
        puts "  Name: $forenames $surname"
        puts " Address: $street, $city"
        puts " Phone: $phone" 
    }
}

    #############################################
    ## Second method to iterate and pick out name  
    #############################################
    # given a dictionary key ( first argument )
    # and a value ( second argument )
    # this <dict get>  will retrive the value for that key
foreach id [dict keys $employeeInfo] {
    set name [dict get $employeeInfo $id forenames]
    set surn [dict get $employeeInfo $id surname]
    puts "Hello, $name $surn"
} 