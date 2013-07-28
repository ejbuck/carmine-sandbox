print "Hello. Please enter a Celsius value: "
celsius = gets.to_i
print celsius, " entered. Saving to file."
ce = File.new("temp.dat", "w")
ce.puts celsius
ce.close

puts "Reading Celsius temperature value from data file..."
num = File.read("temp.dat")
cel = num.to_i
fahrenheit = (cel * 9 / 5) + 32
puts "The number is " + num
print "Result: "
puts fahrenheit

puts "Saving result to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close

