=begin
I want a list of numbers adding up to the goal amount returned.

Maybe it would be easier to do ANY number that adds up to the
goal amount, within certain bounds? Hmm. That would mean
generating the arrays and evaluating them in the same step.
Maybe not, at least in this first go 'round.
=end

@totslist = []
@total = 0

def evalmethod (*combo)
  tot = combo.inject(:+)
  if tot == @total
    combo.sort!
    unless @totslist.include?(combo)
      @totslist << combo
    end
  end
end


def bell(total, *nums)
  @total = total
  nums.each do |a|
    evalmethod(a)
    nums.each do |b|
      evalmethod(a,b)
      nums.each do |c|
        evalmethod(a,b,c)
        nums.each do |d|
          evalmethod(a,b,c,d)
          nums.each do |e|
            evalmethod(a,b,c,d,e)
            nums.each do |f|
              evalmethod(a,b,c,d,e,f)
              nums.each do |g| 
                evalmethod(a,b,c,d,e,f,g)
                  nums.each do |h|
                    evalmethod(a,b,c,d,e,f,g,h)
                end
              end
            end
          end
        end
      end
    end
  end

  if @totslist.empty?
    puts "No solutions."
  else
    @totslist.sort!.reverse!
    puts "Solutions for #{@total} using a sum of any amount of #{nums}:"
    @totslist.each {|a| print a, "\n"}
  end
end

bell(100,10,20)