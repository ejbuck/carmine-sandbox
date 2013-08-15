
def daffy
    print "Thring, pleathe! "
    user_input = gets.chomp
    user_input.downcase!

    if user_input.include? "s"
        user_input.gsub!(/s/, "th")
        puts "Now it's #{user_input}. Much better!"
    elsif user_input.length == 0
        puts "Hey, joker, I thee what you did there."
        daffy
    else
    puts "That'th fine."
    end
end

daffy