=begin
I want a list of numbers adding up to the goal amount returned.

Maybe it would be easier to do ANY number that adds up to the goal amount, within certain bounds? Hmm. That would mean generating the arrays and evaluating them in the same step. Maybe not, at least in this first go 'round.
=end

@numlist = []
@totslist = []
@total = 0

def bell(total, *nums)
  @total = total
  puts @total
  nums.each do |a|
    nums.each do |b|
      nums.each do |c|
        @numlist << [a,b,c]
      end
    end
  end

  @numlist.each do|combo|
 	  tot = combo.inject(:+)
    puts "tot = #{tot}, @total = #{@total}"
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

bell(10,1,2,6)
      
	  
    




