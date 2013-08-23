puts "Text to scan:"
text = gets.chomp

puts "Word to redact:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word.downcase != redact.downcase
        print word + " "
    else
        print "REDACTED "
    end
end