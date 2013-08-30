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
    @numlist << [a]
    nums.each do |b|
      @numlist << [a,b]
      nums.each do |c|
        @numlist << [a,b,c]
        nums.each do |d|
          @numlist << [a,b,c,d]
          nums.each do |e|
            @numlist << [a,b,c,d,e]
            nums.each do |f|
              @numlist << [a,b,c,d,e,f]
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

  @numlist.each do|combo|
 	  tot = combo.inject(:+)
    if tot == @total
      combo.sort!
      unless @totslist.include?(combo)
        puts "Adding #{combo} to totslist."
 	      @totslist << combo
      end
    end
  end

  if @totslist.empty?
    puts "No solutions."
  else
    puts "Solutions for #{@total} using a sum of any amount of #{nums}:"
    @totslist.each {|a| print a, "\n"}
  end
end

bell(100,1,2,3,4,5,6,7,8,9)
      
	  
    




