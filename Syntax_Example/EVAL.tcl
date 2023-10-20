## 
puts "EVAL.tcl"
###########################

# Tcl allow new command creation and execute them while running a tcl script.
# Typically A tcl command is defined as "a list of strings where the first string is a command or procedure".
# Any string or list which meets this criteria can be evaluated and executed by the command eval.
# In VLSI EDA Automation, you may club a set of command which you need to repeat several times in your EDA-Tool shell for design or analysis .


# define a short-hand for "a set of tcl commands"
set cmd {puts "Hello World !"} 
# execute it any no times later in the script
eval $cmd
set cmd { 
   set output [exec where tclsh]
   puts $output 
   }
eval $cmd


set i 0
set cmdIncr {incr i} 
# execute it any no times later in the script
while { $i < 20 } {
   puts "i = $i"
   eval $cmdIncr
}