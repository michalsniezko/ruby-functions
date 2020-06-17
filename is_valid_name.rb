# Write a method format_name that takes in a name string and returns the name properly capitalized.
def format_name(str)
  return str.split(' ').map{|word| word[0].upcase + word[1..word.length-1].downcase}.join(' ')
end

# puts format_name("chase WILSON") # => "Chase Wilson"
# puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

################################################################################

# Write a method abbreviate_sentence that takes in a sentence string and returns
# a new sentence where every word longer than 4 characters has all of it's vowels removed.
def abbreviate_sentence(sent)
  vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  res = []
  sent.split(' ').each do |word|
    if word.length > 4
      vowels.each{|v| word.gsub!(v, '')}
    end
    res.push(word)
  end

  return res.join(' ')
end

# puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
# puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

################################################################################

# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.
# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized

def is_valid_name(str)
  return str.include?(' ') && str === format_name(str)
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

################################################################################
