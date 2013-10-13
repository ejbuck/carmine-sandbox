=begin
This is code to fix the output from my logging app so I can get data graphed 
per day, cross reference, etc.
=end

require 'csv'

@csv = CSV.read("/home/clarity/Desktop/Bed Log.csv")
@list = []
@hash = {}

@csv.each { |row| @list << row.to_a}

@list.each { |entry| k = entry[0]; v = entry[1]; @hash[k] = v.split("\n") }

#@hash.each {|k,v| @splithash[k] = v.split("\n")}

print @hash
puts ""
