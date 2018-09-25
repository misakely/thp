# Afficher les bons emails

def mailing_list (size)
  # return an array of X emails
  list = []
  1.upto(size) do |i|
    if i < 10
      list.push("jean.dupont.0#{i}@email.fr")
    else
      list.push("jean.dupont.#{i}@email.fr")
    end
  end
  return list
end

def display_even (list)
  # Display only even iterations of a list
  # "jean.dupont.02@email.fr"
  # "jean.dupont.04@email.fr"
  # etc..
  for i in 0..list.size
    if i % 2 == 0
      # odd , do nothing
    else
      # even, print !
      puts list[i]
    end
  end
end

# Initialize a mailing list of 50 emails
my_list = mailing_list(50)

# Display only even iterations this time.
display_even(my_list)
