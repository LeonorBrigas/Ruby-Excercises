
# card number 
# maskify('4556364607935616') # should return '############5616'

def maskify(cc)
  # your beautiful code goes here
  cc.length <= 4 ? cc : "#" * (cc.length-4) + cc[-4..-1]
end

# An isogram is a word that has no repeating letters
# uniq
# chars

def is_isogram(string)
  #your code here
  string.downcase.chars.uniq == string.downcase.chars
end


# song decoder should replace WUB with 1 space
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
  #  =>  WE ARE THE CHAMPIONS MY FRIEND

def song_decoder(song)
  #TODO
  if song.include?("WUB")
    song.gsub("WUB", " ").gsub(/\s+/, ' ').strip()
  else
    song
  end
end

# Test.assert_equals(song_decoder("AWUBBWUBC"), "A B C","WUB should be replaced by 1 space");
# Test.assert_equals(song_decoder("AWUBWUBWUBBWUBWUBWUBC"), "A B C","multiples WUB should be replaced by only 1 space");
# Test.assert_equals(song_decoder("WUBAWUBBWUBCWUB"), "A B C", "heading or trailing spaces should be removed");

# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers.
# No floats or non-positive integers will be passed.

def sum_two_smallest_numbers(numbers)
  #Your code here
 numbers.select(&:positive?).min(2).reduce(:+)
end

# The method should return true if a triangle can be built with the sides of given length and false in any other case.
def isTriangle(a,b,c)
   # your code
  a, b, c = [a, b, c].sort
  if a + b > c
    true
  else 
    false
  end
end
