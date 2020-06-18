# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
  vowels = 'aeiou'
  sentence.split(' ').map do |word|
    while !vowels.include?(word[0])
      word[0] = ''
    end
    word
  end.join(' ')
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
