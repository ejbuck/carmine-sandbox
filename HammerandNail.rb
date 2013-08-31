=begin

Function written to solve a puzzle in Blue Toad Mystery Files. There are
four bells, marked with four numbers. In order to sound the alarm
correctly, the numbers must add up to 100. The bells are
allowed to be rung any number of times in order to reach 100.

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
#Method prints combinations of nums that add up to total.
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
    @totslist.sort! {|a,b| b.length <=> a.length}
    puts "Solutions for #{@total} using a sum of any amount of #{nums}:"
    @totslist.each {|a| print a, "\n"}
  end
end

bell(10, 1,2,3,4,5,6,7)