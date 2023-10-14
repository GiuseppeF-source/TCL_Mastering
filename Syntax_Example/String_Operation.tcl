## 
puts "String_Operation.tcl"
###########################

set statement " Fan is a student"
puts $statement

# Removing the initial space
set statement [string trim $statement]
puts $statement

# Length of string
puts [string length $statement]

# Index string
puts [string index $statement 4]

# Index of "is"
puts [string first "is" $statement]

# Print portion of string from index 4 to end
puts [string range $statement 4 end]

# Replace from index 9 to end
puts [string replace $statement 9 end "professor"]

# Compare string
puts [string match "*student" $statement]
