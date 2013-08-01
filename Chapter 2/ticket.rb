#ticket.rb

=begin 
The Twain ticket is a simple example, but it encompasses some
vital Ruby procedures and principles. The most important lesson is
that the knowledge necessary for the program to do anything useful
resides in the object. The ticket object has the knowledge; you tap
into that knowledge by asking the ticket for it, via method calls.
Nothing is more central to Ruby programming than this. It’s all about
asking objects to do things and tell you things. 

- WGR Ch 2
=end

ticket = Object.new

def ticket.venue
"Town Hall"
end
def ticket.performer
"Mark Twain"
end
def ticket.event
"Author's reading"
end
def ticket.price
5.50
end
def ticket.seat
"Second Balcony, row J, seat 12"
end
def ticket.date
"01/02/03"
end

#The earlier, more clumsy example that does the same thing as ticket.all

# print "This ticket is for: "
# print ticket.event + ", at "
# print ticket.venue + ", on "
# puts ticket.date + "."
# print "The performer is "
# puts ticket.performer + "."
# print "The seat is "
# print ticket.seat + ", "
# print "and it costs $"
# puts "%.2f." % ticket.price


puts "This ticket is for: #{ticket.event}, at #{ticket.venue}."
puts "The performer is #{ticket.performer}."
puts "The seat is #{ticket.seat}, " + "and it costs $#{"%.2f." % ticket.price}"


puts ""
print "What would you like to know about the ticket? "
request = gets.chomp
if ticket.respond_to?(request)
puts (ticket.send(request))
else
puts "No such information available"
end
