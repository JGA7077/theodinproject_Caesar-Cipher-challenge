puts "===================================="
puts "Project: Caesar Cipher"

def index_calc(character, shift_value, alphabet_length)
  indexSum = character += shift_value

  if indexSum >= 26
    indexSum = indexSum - alphabet_length
  end

  return indexSum
end

def caesar_cipher(string = "", shift_value = 0)
  puts "\nString received: #{string}"

  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  lowercase_alphabet = {
    "a" => 0,
    "b" => 1,
    "c" => 2,
    "d" => 3,
    "e" => 4,
    "f" => 5,
    "g" => 6,
    "h" => 7,
    "i" => 8,
    "j" => 9,
    "k" => 10,
    "l" => 11,
    "m" => 12,
    "n" => 13,
    "o" => 14,
    "p" => 15,
    "q" => 16,
    "r" => 17,
    "s" => 18,
    "t" => 19,
    "u" => 20,
    "v" => 21,
    "w" => 22,
    "x" => 23,
    "y" => 24,
    "z" => 25
  }
  uppercase_alphabet = {
    "A" => 0,
    "B" => 1,
    "C" => 2,
    "D" => 3,
    "E" => 4,
    "F" => 5,
    "G" => 6,
    "H" => 7,
    "I" => 8,
    "J" => 9,
    "K" => 10,
    "L" => 11,
    "M" => 12,
    "N" => 13,
    "O" => 14,
    "P" => 15,
    "Q" => 16,
    "R" => 17,
    "S" => 18,
    "T" => 19,
    "U" => 20,
    "V" => 21,
    "W" => 22,
    "X" => 23,
    "Y" => 24,
    "Z" => 25
  }
  arr_cipher = []

  unless string.length > 0
    puts "[ERROR] - string vazia"
    return
  end

  string.split('').each do |character|
    lower = lowercase_alphabet[character]
    upper = uppercase_alphabet[character]
    alphabet_length = alphabet.length

    if character == ' '
      arr_cipher.push(' ')
    elsif lower != nil
      indexSum = index_calc(lower, shift_value, alphabet_length)

      arr_cipher.push(alphabet[indexSum])
    elsif upper != nil
      indexSum = index_calc(upper, shift_value, alphabet_length)
      arr_cipher.push(alphabet[indexSum].upcase)
    else
      arr_cipher.push(character)
    end
  end

  puts "Result: #{arr_cipher.join}"
  return arr_cipher.join
  
end

caesar_cipher("What a string!", 5) # Bmfy f xywnsl!
caesar_cipher("Hello World!", 5)   # Mjqqt Btwqi!
caesar_cipher("testeeeeeeeeee", 5) # yjxyjjjjjjjjjj

puts "\n===================================="
