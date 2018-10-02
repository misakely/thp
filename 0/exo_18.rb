# Une list d-emails

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

# Initialize a mailing list of 50 emails
my_list = mailing_list(50)
# Display it for proof
print my_list
