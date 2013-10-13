=begin
This is code to fix the output from my logging app so I can get data graphed 
per day, cross reference, etc.
=end

require 'csv'

@csv = CSV.read("/home/clarity/Desktop/Bed Log.csv")
@hash = {}

@csv.each {|row| entry = row.to_a; @hash[entry[0]] = entry[1].split("\n")}

print @hash
puts ""
