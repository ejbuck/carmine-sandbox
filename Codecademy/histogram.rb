#Tweaked to include a very simple graphic of lines with the histogram info.

puts "Text please."
text = gets.chomp

words=text.split(" ")

frequencies = Hash.new(0)

words.each {|word| frequencies[word] +=1}

frequencies = frequencies.sort_by { |key, value| value }

frequencies.reverse!

for key, value in frequencies
    print key + " "
    puts value
    puts " |" * value
end
