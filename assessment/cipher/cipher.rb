# PROBLEM
# Write a program that encrypts text strings using the following criteria:
#  - Replace each letter in the original string with another letter.
#  - Replace each letter with another letter that is `n` positions away from the original letter.
#  - For example, given letter 'a' and a given rotate of 13, the result should be 'n'

# EXAMPLES / TEST CASES
# See test suite for specific requirements.
# Numbers, spaces, and punctuation should not be encrypted/tranformed.
# Letter casing should be retained (ie. lowercase letters should be transformed to lower case, and uppercase to uppercase)

# DATA STRUCTURES
# Input: 
#  - String
#  - Integer
# Output:
#  - Transformed string
# Use arrays to represent lowercase and uppercase letters with corresponding indexes that can be used for rotation/transformation
# Possibly use array to store result of transformation

# ALGORITHM
# Define two constants: LOWERCASE and UPPERCASE set to array of letters, a to z and A to Z.
# Rotate method
#  - initialize `result` variable set to empty array to store result of character transformation
#  - iterate through each character in string:
#    - add result of character rotation/transformation to `result`` array
#      - use separate `decypher` method to encrypt each character
# Decypher method
#  - if character is an integer, space, or punctuation, return original character
#  - If character is lowercase,
#    - Get index of given character and: 
#      - add given rotation number to index and subtract array size (26) from result.
#    - Use resulting index to find rotated character and return character
#  - If character is uppercase,
#    - use same logic as lowercase character, but use UPPERCASE array to rotate characters.

class Cipher
  LOWERCASE = ('a'..'z').to_a
  UPPERCASE = ('A'..'Z').to_a

  def self.rotate(str, rotation)
    result = []
    str.chars.each do |char|
      result << decypher_character(char, rotation)
    end
    result.join
  end

  def self.decypher_character(char, rotation)
    if LOWERCASE.include?(char)
      LOWERCASE[LOWERCASE.find_index(char) + rotation - 26]
    elsif UPPERCASE.include?(char)
      UPPERCASE[UPPERCASE.find_index(char) + rotation - 26]
    else
      char
    end
  end
end
