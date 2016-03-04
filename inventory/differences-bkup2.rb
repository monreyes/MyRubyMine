unless ARGV.length == 2 
  puts "Usage: differences.rb old-inventory new-inventory"
  exit
end    
#setting intermediate values
#file_lines_0= File.open(ARGV[0]).readlines
#file_lines_1= File.open(ARGV[1]).readlines
# Setting variable old_inventory for the 1st text file to count lines
# old_inventory = File.open('old-inventory.txt' ).readlines
old_inventory = File.open(ARGV[0]).collect do | line |
line.downcase
end
# Setting variable new_inventory for the 2nd text file to count lines
# new_inventory = File.open('new-inventory.txt' ).readlines
new_inventory = File.open(ARGV[1]).collect do | line |
	line.downcase
end


untouched = new_inventory - (new_inventory - old_inventory)

old = old_inventory.length
new = new_inventory.length
puts "There are #{old} files in the old-inventory.txt"
puts "There are #{new} files in the new-inventory.txt"
rowdiff_add = (new_inventory - old_inventory).length
rowdiff_less= (old_inventory - new_inventory).length
puts ""
puts "There are #{rowdiff_add} files that has been added to the old inventory as per the below list:"
puts new_inventory - old_inventory
puts ""
puts "There are #{rowdiff_less} files that has been removed from the old inventory as per the below list:"
puts old_inventory - new_inventory
puts ""
puts "There are #{untouched.length}  files that have been untouched as listed below:"
puts untouched
# rowdiff_add = (new_inventory - old_inventory).length
# rowdiff _less= (old_inventory - new_inventory).length
# puts rowdiff