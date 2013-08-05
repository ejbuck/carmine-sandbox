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
