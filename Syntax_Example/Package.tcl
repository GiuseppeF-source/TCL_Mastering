## 
puts "Package.tcl"
###########################

# Packages are used for creating reusable TCL Code Library.
# Namespace is used to encapsulate proc & variables for the defined package
# The package can be a collection of Tcl scripts, binary library, or a combination of both.

#################
# A Package
#################
# Register the package name 
package provide mathf 1.0

# Include the basic TCL (with versions) inside the package
package require Tcl   8.6

# We create namespace same as package name [ easy to remember later use ]

namespace eval mathf {
    proc mul { a b } {
    return [expr $a * $b];
   }
    proc sub { a b } {
    return [expr $a - $b];
   }
    proc div { a b } {
    return [expr $a / $b];
   }
}

