def caesar_cipher(string, key)
  alphabet = ('a'..'z').to_a
  alphabet_total_index = alphabet.length

  array_string = string.chars.map do |string_letter|
    normalized_letter = string_letter.unicode_normalize(:nfd).gsub(/\p{Mn}/, '')
    low_letter = normalized_letter.downcase
    next string_letter unless alphabet.include?(low_letter)
    
    is_uppercase = string_letter.upcase == string_letter
    alphabet_letter_index = alphabet.find_index(low_letter)
    new_letter_index = (alphabet_letter_index + key) % alphabet_total_index

    is_uppercase ? alphabet[new_letter_index].upcase : alphabet[new_letter_index]
  end

  array_string.join
end