require "pry"
require 'benchmark'


@SHORT_DIC= ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

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

def match_shakespeare(filename,dictionary=@SHORT_DIC)
  matches = Hash.new {}
  f = File.open(filename)
  f.each_line do |line|
    line_match = substring(line, dictionary)
    line_match.each do |k,v|
      if matches.has_key?(k)
        matches[k] += v
      else
        matches[k] = 1
      end
    end
  end
  return matches.sort_by {|_key, value| value}.to_h
end

# get swearwords from file
def get_swearwords(filename)
  swearwords = Array.new(0)
  f = File.open(filename)
  f.each_line do |line|
    swearwords << line.chomp
  end
  return swearwords
end

def launcher
  #puts "#{match_shakespeare(shakespeare.txt)}"
  swearwords = get_swearwords('swearwords.txt')
  matches_swear = match_shakespeare('shakespeare.txt', swearwords)
  puts "Total of swear words from The Complete Works of William Shakespare \n#{matches_swear.values.inject(0){|sum,x| sum + x }}"
  p matches_swear
end


launcher
