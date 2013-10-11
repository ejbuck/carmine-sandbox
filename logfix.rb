=begin
This is code to fix the output from my logging app so I can get data graphed per day, cross reference, etc.
=end

require 'csv'

@csv = CSV.read("/home/clarity/Desktop/Bed Log.csv")
@list = []
@splitlist = []
@hash = {}

@csv.each { |row| @list << row.to_a}

@list.each { |array| array.each { |a| @splitlist << a.split("\n")}}

@splitlist.each do |datum|
	if datum.length == 5
		keyhold = datum.to_sym
	elsif datum == Array.try_convert(datum)
		valhold = datum
	end
	@hash[keyhold] = valhold
end

print @hash

puts ""


=begin
@list = []

CSV.foreach("/home/clarity/Desktop/Bed Log.csv", :headers=>true) do |row|
	@list << row
end

@list.each { |x| x.split("\n") }

print @list
puts ""

	a = row[0].to_sym
	@list[a] = row[1]
end

print @list
puts ""

@list.each_value {|v| v.split("\n")}

print @list
puts ""
=end