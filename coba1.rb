def caesar_cipher(string, shift)
  string_array = string.split("").map do |char|
    num_char = char.ord

    if char.between?('a', 'z')
      ((num_char - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif char.between?('A', 'Z')
      ((num_char - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      char
    end
  end

  string_array.join
end
p caesar_cipher("What a string!", 5)