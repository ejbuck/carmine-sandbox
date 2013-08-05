=begin 
Code previously established to create a Ticket class that
includes attributes venue, date, and price; the ability to read venue
and date; and the ability to read and write price. 
=end

class Ticket
	def initialize(venue, date)
		@venue = venue
		@date = date
	end
	def price=(price)
		@price = price
	end
	def venue
		@venue
	end
	def date
		@date
	end
	def price
		@price
	end
end

#There's a shorter way to assign attributes to a class, though:

class Ticket
attr_reader :venue, :date
attr :price, true
def initialize(venue, date)
	@venue = venue
	@date = date
	end
end

#:foo = symbol

=begin
attr_accessor is equal to attr_reader and attr_writer.
attr :foo, true is equal to attr_accessor.
attr :foo is equal to attr_reader.
attr is useful, but can only be set for one accessor at a time.
=end

