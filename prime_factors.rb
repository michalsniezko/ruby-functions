# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
  factors = []
  (1..num).each{|n| factors << n if num % n == 0}

  factors.select{|f| prime?(f)}
end

def prime?(num)
  return false if num < 2

  (2...num).each do |factor|
  	return false if num % factor == 0
  end

  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
