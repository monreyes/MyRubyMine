File.open("pubdiff.rb", "r+") do |file|
  new_file = File.new("newfile.txt", "r+")
  while line = file.gets
  new_file.puts "do find a replace"
  end
end