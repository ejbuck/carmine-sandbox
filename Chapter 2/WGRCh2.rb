#WGR Chapter 2 notes

#All methods have outputs. puts always evaluates to false, 
#which is why the second puts below won't show up:

if puts "You'll see this"; puts "but not this"; end


#Unique object IDs

def sampleid
obj = Object.new
puts "The id of obj is #{obj.object_id}."
str = "Strings are objects too, and this is a string!"
puts "The id of the string object str is #{str.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."
end

sampleid