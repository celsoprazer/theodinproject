def substrings(text, dictionary)
  text = text.downcase
  result = Hash.new(0)

  dictionary.each do |word|
    word = word.downcase
    count_word = text.scan(word).length
    result[word] = count_word if count_word > 0 end
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "enter a string:"
text = gets.chomp

result = substrings(text, dictionary)

puts " The result is: #{result}"