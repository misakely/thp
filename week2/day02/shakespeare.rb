@dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]


def substring(sentence, dictionary)
  # a new hash representing occurences of word presents in sentence
  occurences = Hash.new{0}
  for i in 0..sentence.size do
    for j in i..(sentence.size - 1) do
      substring = sentence[i..j]
      if dictionary.include? substring
        occurences[substring] += 1
      end
    end
  end
  return occurences
end

def get_file_as_string(filename)
  data = ''
  f = File.open(filename)
  f.each_line {|line| p substring(line, @dictionary) }
end

def launcher
  get_file_as_string('shakespeare.txt')
end


launcher
