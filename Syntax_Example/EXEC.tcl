## 
puts "EXEC.tcl"
###########################

# The exec command executes a system command(binary) from linux/unix while staying within TCLSH.
# The exec command treats its arguments as the names and arguments for a set of programs to run.
# In VLSI EDA Automation any external EDA-Software Binary can also be executed using exec while staying within the shell of Parent EDA Tool.

set output [exec ./Variable.tcl]
puts $output

set output [exec pwd]
puts $output

##############################
## EDA Automation Use of EXEC 
#############################
# catch — Evaluate a script and trap exceptional returns
if { [catch {exec pwd} ret] } {
   puts "inside IF-BLOCK-1"
   puts "=== $ret"
} else {
   set retStatus [catch [exec pwd]]
   puts "inside ELSE-BLOCK-1"
   puts $retStatus 
}
if { [catch {exec cd /usr/bin/tclsh/abc } ret] } {
   puts "inside IF-BLOCK-2"
   puts "$ret"
} else {
   puts "inside ELSE-BLOCK-2"
   set retStatus [catch [exec cd /usr/bin/tclsh/abc ]]
}