=begin
I want a list of numbers adding up to the goal amount returned.

Maybe it would be easier to do ANY number that adds up to the goal amount, within certain bounds? Hmm. That would mean generating the arrays and evaluating them in the same step. Maybe not, at least in this first go 'round.
=end

@numlist = []

def bell(total, *nums)
  nums.each do |a|
    nums.each do |b|
      nums.each do |c|
        @numlist << [a,b,c]
      end
    end
  end

  print @numlist, "\n"

end

bell(10,1,2,3)
      
	  
    




