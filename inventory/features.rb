#---
# Excerpted from "Everyday Scripting in Ruby"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/bmsft for more book information.
#---
def check_usage   # (1)
  unless ARGV.length == 2 
    puts "Cannot Proceed With The Operation: Please provide 2 textfile to compare"
    exit
  end
end

def boring?(line)
	#line.chomp.split('/').include?('temp') or
	#line.chomp.split('/').include?('recycler')
	line.split('/').include?('temp') or
	line.split('/').include?('recycler')
end

def inventory_from(filename)
  inventory = File.open(filename)
  downcased = inventory.collect do | line | 
   #line.downcase
   line.chomp.downcase
    
  end
  downcased.reject do | line |
    boring?(line)
  end
end

def compare_inventory_files(old_file, new_file) # (2)
  old_inventory = inventory_from(old_file)
  new_inventory = inventory_from(new_file)
  
  
  # Setting variable lastweek for the 1st text file to count lines
lastweek= File.open(old_file).readlines
# Setting variable thisweek for the 2nd text file to count lines
thisweek = File.open(new_file).readlines
untouched = thisweek  - (thisweek  - lastweek)
old = lastweek.length
new = thisweek.length
puts "Toyota Rav4 2013 XLE has #{old} safety features"

if new > old
	puts "Toyota Rav4 2013 Limited has #{new} safety features"
elsif old > new
	puts "Toyota Rav4 2013 Limited safety features decreased to #{new}"
else
	puts "Toyota Rav4 2013 Limited still has the same number as the XLE which has #{new} safety features"
end
  
puts ""
puts "Here is the overall feature list"
puts File.open(new_file).readlines
rowdiff_add = ( thisweek - lastweek).length
rowdiff_less= (lastweek -  thisweek).length
puts ""
puts "#{rowdiff_add}  new limited safety features has been added to the xle as per below list:"
puts thisweek - lastweek
puts ""
puts "#{rowdiff_less} safety features are missing compare to new limited feature:"
puts lastweek - thisweek
puts ""
puts "#{untouched.length} safety features that retains"
puts untouched

puts " "
  puts "The following files have been added:"
  puts new_inventory - old_inventory

  puts ""
  puts "The following files have been deleted:"
  puts old_inventory - new_inventory
  
  
end

if $0 == __FILE__ # (3)
  check_usage 
  compare_inventory_files(ARGV[0], ARGV[1]) 
end
