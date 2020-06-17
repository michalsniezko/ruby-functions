# Write a method opposite_count that takes in an array of unique numbers. 
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
  counter = 0
  nums.each_with_index do |e1, i1|
    nums.each_with_index do |e2, i2|
      if i2 > i1
        counter += 1 if e1 + e2 === 0
      end
    end
  end
  
  counter
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
