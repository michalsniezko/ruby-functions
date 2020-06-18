#   Write a method same_char_collapse that takes in a string and returns a collapsed version of the string.
#  To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no such adjacent characters.
#   If there are multiple pairs that can be collapsed, delete the leftmost pair.
#   For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(str)

  while has_pair?(str)
    str = remove_pair(str)
  end
  str

end

def has_pair?(str)
  (0..str.length-1).each do |i|
    if str[i] == str[i+1]
      return true
    end
  end
  false
end

def remove_pair(str)
  (0..str.length-1).each do |i|
    if str[i] == str[i+1]
      str[i+1] = ''
      str[i] = ''
      break
    end
  end

  str
end


puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
