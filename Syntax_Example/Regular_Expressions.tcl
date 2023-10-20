## 
puts "Regular_Expressions.tcl"
###########################

 # Regular expressions can be expressed in jut few rules:
 # ^ Matches the beginning of a string 
 # $ Matches the end of a string
 # . Matches any single character
 # * Matches any count (0-n) of the previous character
 # + Matches any count, but at least 1 of the previous character
 # [...] Matches any characher of a set of characters
 # [^..] Matches any character *NOT* a member of the set of characters following the ^.
 # (...) Groups a set of characters into a subSpec.

##################
## Find & Replace
##################
set myStr "A quick brown fox jumped over a brown lazy dog"
if { [regexp -nocase "brown" $myStr] } {
    puts "Match found in \"$myStr\"...and replacing"
    # use regsub for sobstitution
    regsub -nocase -all "brown" $myStr "REPLACED" myStr
    puts "now it is ====> $myStr"  
}

######################
## Wild Card Matching
######################
set res "A quick brown_1 fox jumped over a brwn_2 lazy dog"
foreach ele $res {
    # Use of wild card matching of regex
    if {[regexp {b.*n} $ele]} {
        puts "$ele"
    }
}


###########################
## Group Matching & Status 
###########################
set sample "Where there is a will, There is a way"

# Match the first substring with lowercase letters only
set result [regexp {[a-z]+} $sample match]
puts "match_satus<$result> matched string: <$match>"
# Match the first two words ( GROUP ), the first one allows uppercase
set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2]
puts "match_status <$result> Matched_string: <$match> 1st_string: <$sub1> 2nd_string: <$sub2>"

################################
## Direct Replace & Match count
################################
regsub "way" $sample "abundance" sample2
puts "Old_string: $sample \n New_string: $sample2"
# Use the -all option to count the number of "words"
puts "Number of matching words: [regexp -all {[^ ]+} $sample]"


