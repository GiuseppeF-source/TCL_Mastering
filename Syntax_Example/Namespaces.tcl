## 
puts "Namespaces.tcl"
###########################

# A namespace allows you to place a bunch of code
# under the hood of a name

# Thus any naming conflicts with Classes, 
# Functions and Constants etc are avoided 
# between two namespaces.

# It allows your code to live in that namespace.

# Hence encapsulation of data & functions are done in various programming languages.

# Namespace Hierarchy Separator is Generally “::” 


###########################
# Namespace Creation in TCL 
###########################
# namespace eval <Your-Name-space-name>

# Example of up-counter
# Creation of Namespace #A Up Counter
namespace eval Counter {
   variable num 1
   proc increase { } {
      variable num
      return [incr num]
   }
puts "INSIDE : Num =  $Counter::num";
}

# Adding Proc/Variable in above Name Space
namespace eval Counter {
   variable clock 5
   proc hello { } {
      puts "Hello World"
   }
   puts "INSIDE : Clock = $clock"; 
}

#Printing a variable outside its Namespace
puts "OUTSIDE : Num =  $Counter::num";
puts "OUTSIDE : Clock =  $Counter::clock";

# Executing a proc from outside a namespace
Counter::increase
puts "OUTSIDE : Num =  $Counter::num";
Counter::hello

# Removing a Proc in the above Name Space
namespace eval Counter {
    rename hello ""
} 

###########################
# Namespace Hierarchy 
###########################

#########Builtin Namespace##############
#Global namespace
namespace eval top { 
   variable test;
#local namespace
   namespace eval within {
       proc hello { } {
	    puts "hello world";
	   }
    }
}

#Changing the variable value & printing
set ::top::test 25
puts $::top::test

#Accessing a proc defined in a local namescape
::top::within::hello

###########################
# Namespace Export/Import 
###########################

namespace eval space {
    proc mul { a b } {
    return [expr $a * $b];
   }
    proc sub { a b } {
    return [expr $a - $b];
   }
    proc div { a b } {
    return [expr $a / $b];
   }
   # From Inside Exporting to Outside 
namespace export * 
}

#From outside importing to current namespace
namespace import space::*
set result [mul 5 2]
puts $result
set result [sub 5 2]
puts $result
set result [div 5 2]
puts $result

# Deleting All the Imported Items from Present namespace
namespace forget space::*
set result [div 5 2]
puts $result