#---
# Excerpted from "Everyday Scripting in Ruby"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/bmsft for more book information.
#---
def check_usage # additional line a.1
	unless ARGV.length == 2 
	  puts "Usage: differences.rb old-inventory new-inventory"
	  exit
	end
end   # additional line a.2


def boring?(line)
	# puts "boring? -> " + line.inspect     # commenting to exclude inspect
  line.split('/').include?('temp') or
    line.split('/').include?('recycler')
end 

def inventory_from(filename)
  inventory = File.open(filename) #(1)
  downcased = inventory.collect do | line | #(2)
    line.chomp.downcase #chomp removes the trailing \n
  end
  downcased.reject do | line |  #(3)
    boring?(line)
  end
end

def compare_inventory_files(old_file, new_file) # new line a.3
	old_inventory = inventory_from(old_file)
	new_inventory = inventory_from(new_file)
	# old_inventory = inventory_from(ARGV[0]) # replaced by above method
	# new_inventory = inventory_from(ARGV[1]) # replaced by above method

	puts "The following files have been added:"
	puts new_inventory - old_inventory

	puts ""
	puts "The following files have been deleted:"
	puts old_inventory - new_inventory

end # new line a.4

if $0 == __FILE__       # new block a.4
check_usage
compare_inventory_files(ARGV[0], ARGV[1])
end

