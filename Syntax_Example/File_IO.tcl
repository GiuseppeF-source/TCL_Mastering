## 
puts "File_IO.tcl"
###########################

# Open read file
set fRead [open ex_input_file.txt r]
# Open write file
set fWrite [open ex_out_file.txt w]


while {![eof $fRead]} {
    set line [gets $fRead]
    # Removing the "\n" character from the line
    set line [string trimright $line "\n"] 
    puts "$line"
    # Converting to uppercase
    set line [string toupper $line]
    # Write file
    puts $fWrite $line
}
close $fRead 
close $fWrite
