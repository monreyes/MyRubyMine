def inventory_from(filename)
inventory = File.open(filename)
downcased = inventory.collect do | line |
line.downcase
end
downcased.reject do | line |
boring?(line)
end
end