=begin
I want a list of numbers adding up to the goal amount returned.

Maybe it would be easier to do ANY number that adds up to the goal amount, within certain bounds? Hmm. That would mean generating the arrays and evaluating them in the same step. Maybe not, at least in this first go 'round.
=end

@numlist = []
@totslist = Hash.new
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
      puts "Adding #{combo} to totslist."
 	    @totslist[tot] = combo
    else
      puts "Skip."
    end
  end

  if @totslist.empty?
    puts "No solutions."
  else
    @totslist.each {|k,v| print v, " equals ", k, "\n"}
  end
end

bell(10,1,2,6)
      
	  
    




