#---
# Excerpted from "Everyday Scripting in Ruby"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/bmsft for more book information.
#---
def description_of(inhabitant)
  if inhabitant == "sophie"
    ['gender: female', 'height: 145']
  elsif inhabitant == "paul"
    ['gender: male', 'height: 145']
  elsif inhabitant == "dawn"
    ['gender: female', 'height: 170']
  elsif inhabitant == "brian"
    ['gender: male', 'height: 180']
  elsif inhabitant == "tookmall"
    ['gender: bading', 'height: 200']
  elsif inhabitant == "bukyo"
    ['gender: thats my tomboy', 'height: 150']
  else
    ['species: Trachemys scripta elegans', 'height: 6']
  end
end
