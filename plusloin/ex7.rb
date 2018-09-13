#magine que tu as une array de mouton. Certains de ces moutons manquent. Créer une fonction qui compte le nombre de moutons présent dans l'array (true = présent).


def count(array)
  count = 0
  array.each do |present|
    if present
      count += 1
    end
  end
  puts count
end

moutons = [true, true, true, false, true, true, true, true , true, false, true, false, true, false, false, true , true, true, true, true , false, false, true, true]
count(moutons)
