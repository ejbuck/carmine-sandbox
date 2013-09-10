#variables
@nope = []
@possibles = []
@possibles_a = []
@possibles_e = []
@possibles_i = []
@possibles_o = []
@possibles_u = []
@possibles_y = []

@probables = []

#helper functions
    
def word_rules_2(list)
    list.each do |word|
        if word.include? "q"
            unless word.include? "qu"
                list.delete(word)
                @nope << word
            else
                word << @possibles
            end
        elsif word.rindex("v") == 2
            list.delete(word)
            @nope << word
        elsif word.rindex("i") == 2
            list.delete(word)
            @nope << word
        elsif word.include? "xs"
            list.delete(word)
            @nope << word
        elsif word.include? "jj"
            list.delete(word)
            @nope << word
        elsif word.include? "vv"
            list.delete(word)
            @nope << word
        elsif word.include? "kk"
            list.delete(word)
            @nope << word
        elsif word.include? "ww"
            list.delete(word)
            @nope << word
        elsif word.include? "xx"
            list.delete(word)
            @nope << word
        else
            @probables << word
        end
    end
end



#Find all three letter words that start with b



"baa".upto("bzz") { |word| @possibles << word }

@possibles.each do |word|
    if word.include? "a"
        @possibles_a << word
    elsif word.include? "e"
        @possibles_e << word
    elsif word.include? "i"
        @possibles_i << word
    elsif word.include? "o"
        @possibles_o << word
    elsif word.include? "u"
        @possibles_u << word
    elsif word.include? "y"
        @possibles_y << word
    else
        @nope << word
    end
end

word_rules_2(@possibles_a)
word_rules_2(@possibles_e)
word_rules_2(@possibles_i)
word_rules_2(@possibles_o)
word_rules_2(@possibles_u)
word_rules_2(@possibles_y)

puts @possibles.length
puts @probables.length
