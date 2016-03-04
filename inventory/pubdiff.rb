# Setting variable lastweek for the 1st text file to count lines
lastweek= File.open('lastweek.txt' ).readlines
# Setting variable thisweek for the 2nd text file to count lines
thisweek = File.open('thisweek.txt' ).readlines
untouched = thisweek  - (thisweek  - lastweek)
old = lastweek.length
new = thisweek.length
puts "Last week's report shows #{old} subscribers that did not received our publications"
if new > old
	puts "This week's report shows that it has increased to #{new} subscribers that did not received our publications"
elsif old > new
	puts "This week's report shows that it is now down to #{new} subscribers that did not received our publications"
else
	puts "This week's report shows that it is just equal to last week as #{new} subscribers did not received our publications"
end
# puts "Last week's report shows #{old} subscribers that did not received our publications"
# puts "This week's report shows that it has increased to #{new} subscribers that did not received our publications"
puts ""
puts "Here is the overall list for this week"
puts File.open('thisweek.txt' ).readlines
rowdiff_add = ( thisweek - lastweek).length
rowdiff_less= (lastweek -  thisweek).length
puts ""
puts "There are #{rowdiff_add}  subscribers (did not received publication) that has been added to the last week report as per the below list:"
puts thisweek - lastweek
puts ""
puts "There are #{rowdiff_less} subscribers who could be receiving publication already for the last week's report as per the below list:"
puts lastweek - thisweek
puts ""
puts "There are #{untouched.length}  subscribers that remains to have not receive our publications as listed below since last report:"
puts untouched
# rowdiff_add = (new_inventory - old_inventory).length
# rowdiff _less= (old_inventory - new_inventory).length
# puts rowdiff
#datestamp = Time.now.strftime('%m-%d-%Y')
# puts datestamp
# mydir = C:\Users\rreyes.FARM\Dropbox\KnowledgeBase\Ruby\code\inventory\pubdiff.rb
# > "pub-#{datestamp}".txt