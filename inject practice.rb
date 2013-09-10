=begin
Create method my_sum
put it in the class of Array
Using each, create a method that sums each item in an array

HOUR TOPS
=end

class Array
  def my_sum
    self.each do |number|
    end
  end
end

# [].my_sum should return 0
# [1,2,3,4] should return 10
# [1,1,1,1] should return 4
