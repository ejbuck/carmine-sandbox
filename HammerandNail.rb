=begin
I want a list of numbers adding up to the goal amount returned.

Maybe it would be easier to do ANY number that adds up to the 
goal amount, within certain bounds? Hmm. That would mean 
generating the arrays and evaluating them in the same step. 
Maybe not, at least in this first go 'round.
=end

@numlist = []
@totslist = []
@total = 0

def bell(total, *nums)
  @total = total
  nums.each do |a|
  if a == @total
    unless @totslist.include?(a)
      puts "Adding #{combo} to totslist."
      @totslist << [a]
    end
  end
    nums.each do |b|
    tot = (a+b)
    if tot == @total
      combo = [a,b]
      unless @totslist.include?(combo)
        puts "Adding #{combo} to totslist."
        @totslist << combo
      end
    end
      nums.each do |c|
      tot = (a+b+c)
      if tot == @total
        combo = [a,b,c]
        unless @totslist.include?(combo)
          puts "Adding #{combo} to totslist."
          @totslist << combo
        end
      end
        nums.each do |d|
        tot = (a+b+c+d)
        if tot == @total
          combo = [a,b,c,d]
          unless @totslist.include?(combo)
            puts "Adding #{combo} to totslist."
            @totslist << combo
          end
        end
          nums.each do |e|
          tot = (a+b+c+d+e)
          if tot == @total
            combo = [a,b,c,d,e]
            unless @totslist.include?(combo)
              puts "Adding #{combo} to totslist."
              @totslist << combo
            end
          end
            nums.each do |f|
            tot = (a+b+c+d+e+f)
            if tot == @total
              combo = [a,b,c,d,e,f]
              unless @totslist.include?(combo)
                puts "Adding #{combo} to totslist."
                @totslist << combo
              end
            end
              # nums.each do |g|   #This is the iteration where a significant pause for computation happens, leaving it commented out for now.
              #   @numlist << [a,b,c,d,e,f,g]
    #             nums.each do |h|
    #               @numlist << [a,b,c,d,e,f,g,h]
    #             end
              # end
            end
          end
        end
      end
    end
  end

  # @numlist.each do|combo|
 	#   tot = combo.inject(:+)
  #   if tot == @total
  #     combo.sort!
  #     unless @totslist.include?(combo)
  #       puts "Adding #{combo} to totslist."
 	#       @totslist << combo
  #     end
  #   end
  # end

  if @totslist.empty?
    puts "No solutions."
  else
    puts "Solutions for #{@total} using a sum of any amount of #{nums}:"
    @totslist.each {|a| print a, "\n"}
  end
end

bell(100,169,20,33,40,50)
      
	  
    




