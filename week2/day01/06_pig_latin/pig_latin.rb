def translate(a_string)
  # array of vowels
  vowels = ['a', 'e', 'i', 'o', 'y']
  # start a loop on each word of a_string
  converted_words = a_string.split.map do |word|
    index = 0 # we need an index to save portion of word
    # start a loop on each char of word
    word.each_char do |char|
      # if vowels detected stop loop on chars of word
      if vowels.include?(char)
        break
      end
      index += 1
    end
    # recompose the word with the index stored and add "ay" at the end
    word[index, word.length] + word[0, index] + 'ay'
  end
  # return a string, not an array :)
  converted_words.join(' ')
end
