## 
puts "Build_Package.tcl"
###########################

########################
# Packaging The Package
########################
# get the cureent working directory
set thisDirectory [pwd]

# Will use : pkg_mkIndex - Build an index for automatic loading of packages
pkg_mkIndex -verbose [file join [pwd]] . package*.tcl