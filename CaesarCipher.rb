class CaesarCipher
  def initialize(shift)
    @shift = shift % 26
  end

  def encode(text)
    text.tr("A-Za-z", shifted_alphabet)
  end

  def decode(text)
    text.tr(shifted_alphabet, "A-Za-z")
  end

  private

  def shifted_alphabet
    shifted_upcase = ("A".."Z").to_a.rotate(@shift).join
    shifted_downcase = ("a".."z").to_a.rotate(@shift).join
    shifted_upcase + shifted_downcase
  end
end

puts "Enter the shift value (an integer):"
shift = gets.to_i

cipher = CaesarCipher.new(shift)

puts "Enter the string to encode:"
input_string = gets.chomp
encoded = cipher.encode(input_string)
puts "Encoded string: #{encoded}"

puts "Enter the string to decode:"
encoded_string = gets.chomp
decoded = cipher.decode(encoded_string)
puts "Decoded string: #{decoded}"
