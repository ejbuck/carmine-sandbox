=begin
This is code to fix the output from my logging app so I can get data graphed 
per day, cross reference, etc.
=end

require 'csv'

@csv = CSV.read("/home/clarity/Desktop/Bed Log.csv")
@list = []
@hash = {}
@splithash = {}

@csv.each { |row| @list << row.to_a}

print @list
puts "================="

@list.each do |entry|
	v = entry[0]
	k = entry[1]
	@hash[v] = k
end

@hash.each {|k,v| @splithash[k] = v.split("\n")}

print @splithash
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
