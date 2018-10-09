def caesar_cipher(a_string, shift_factor=2)
  # Return the string modified by the shift factor given

  s_crypted = Array.new(0)
  a_string.split('').each do |letter|
    ascii = letter.ord
    if ('a'..'z').include? letter
      shift_factor.times do
        if ascii > 122 then ascii = 97 end
        ascii += 1
      end
    elsif ('A'..'Z').include? letter
      shift_factor.times do
        if ascii > 90 then ascii = 65 end
      ascii += 1
      end
    else
      # if letter is not a letter, dont do anything
      ascii = letter
    end
     s_crypted << ascii.chr
  end
  return s_crypted.join
end



def launch
  puts "What a string! / 5  ==> #{caesar_cipher("What a string!", 5)}"
  puts "Hello World! / 2(default) ==> #{caesar_cipher("Hello World!")}"
end

launch
