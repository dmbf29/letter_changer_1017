# define the alphabet as an array
# split the text on the characters.
# iterate over array of characters using .map
# check if its in the alphabet
# locate index in the alphabet
# substract 3 idex
# find the new letter with the index
# if its not in the alphabet, give back the original character
# join the letter back together
ALPHABET = ("A".."Z").to_a

def encrypt(text)
  text.chars.map do |letter|
    index = ALPHABET.index(letter)
    index ? ALPHABET[index - 3] : letter
  end.join
end

# if alphabet.include?(letter)
#   index = alphabet.index(letter)
#   alphabet[index - 3]
# else
#   letter
# end
