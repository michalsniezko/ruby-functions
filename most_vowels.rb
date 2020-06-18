# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  vowels = 'aeiouy'
  word = ''
  max = 0
  sentence.split(' ').each do |ele|
    counter = 0
    ele.each_char{|c| counter += 1 if vowels.include?(c)}
    word, max = ele, counter if counter > max
  end
  word
end

print most_vowels("what a wonderful life") #=> "wonderful"
