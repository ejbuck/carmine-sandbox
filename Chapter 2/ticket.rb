#ticket.rb

=begin
The Twain ticket is a simple example, but it encompasses some vital Ruby proce-
dures and principles. The most important lesson is that the knowledge necessary for
the program to do anything useful resides in the object. The ticket object has the knowl-
edge; you tap into that knowledge by asking the ticket for it, via method calls. Nothing
is more central to Ruby programming than this. It’s all about asking objects to do
things and tell you things.
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

print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price


puts "This ticket is for: #{ticket.event}, at #{ticket.venue}."
puts "The performer is #{ticket.performer}."
puts "The seat is #{ticket.seat}, " + "and it costs $#{"%.2f." % ticket.price}"
