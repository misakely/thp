
# this is our dictionary
@dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def jean_michel_data(sentence, dictionary)
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

def launcher
  puts "Compter les mots"
  puts "=" * 30
  p jean_michel_data("below", @dictionary)
  p jean_michel_data("Howdy partner, sit down! How's it going?", @dictionary)
  puts "Compter les mots(bis)"
  puts "=" * 30
end


launcher
