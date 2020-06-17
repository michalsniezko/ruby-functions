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

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the llw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
