def caeser_chipher(word, replacement)
  result = ""

  word.each_char do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 65 : 97
      coded_latter = ((char.ord - base + replacement) % 26 + base).chr
      result = result + coded_latter
      else
        result = result + char
    end
  end
  return result
end

puts "Enter a word to encode:"
word = gets.chomp

puts "Enter a number to encode:"
replacement = gets.chomp.to_i

result = caeser_chipher(word, replacement)

puts "The encoded word is: #{result}"