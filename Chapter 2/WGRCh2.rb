#WGR Chapter 2 notes

#All methods have outputs. puts always evaluates to false, 
#which is why the second puts below won't show up:

if puts "You'll see this"; puts "but not this"; end


#Unique object IDs

def sampleid

obj = Object.new
puts "The id of obj is #{obj.object_id}."
str = "Strings are objects too, and this is a string!"
puts str
puts "The id of the string object str is #{str.object_id}."
puts "And the id of the integer 100 is #{100.object_id}."

puts ""

a = Object.new
b = a
puts "a is a new object. b is equal to a."
puts "a's id is #{a.object_id} and b's id is #{b.object_id}."

puts ""

string_1 = "Hello"
puts string_1
string_2 = "Hello"
puts string_2
puts "string_1's id is #{string_1.object_id}."
puts "string_2's id is #{string_2.object_id}."

end

=begin 
It looks like objects that I create inside a method will
generate new IDs every time. Set variables, like 100, won't. So that
means I could run a given method multiple times and be able to refer
to each set of objects created without confusion. Neat! 
=end

sampleid

#foo.respond_to?
puts ""
obj = Object.new
if obj.respond_to?("talk")
obj.talk
else
puts "Sorry, the object doesn't understand the 'talk' message."
end

#method variable requirements
puts ""
def two_or_more(a,b,*c)
puts "I require two or more arguments!"
puts "And sure enough, I got: "
p a, b, c
end

two_or_more(1,2,3,4,5)

#This will result in a syntax error:
def broken_args(x,*y,z=1)
end

#Because arguments have to go in a particular order-
#Required (a), Default (b=1), Optional (*c). Possible orders:
#R, D, O, R/D, R/O, D/O, R/D/O, R/D/O/R.

#O before D doesn't work because Ruby won't know whether
#there's enough left over to fill in the default before trying
#to fill the sponge (Optional).
#D or O before R doesn't work because the Required variables
#need to be filled before Ruby knows whether D or O get to have
#anything.


#Local variables and variable assignment
puts ""

def say_goodbye
x = "Goodbye"
puts x
end

def start_here
x = "Hello"
puts x
say_goodbye
puts "Let's check whether x remained the same:"
puts x
end

start_here
