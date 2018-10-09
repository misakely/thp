def trader_du_dimanche(prices)
  # Return a pair representing best day to buy and to sell (best diff)
  highest_diff = 0
  pair = [0, 0]
  # For every day
  (0..prices.length).each do |i|
    # For days after i
    for j in i...prices.length do
      if (prices[j] - prices[i]) > highest_diff
        highest_diff = prices[j] - prices[i]
        pair = [i, j]
      end
    end
  end
  pair
end

# Make a hash with a lot of data
def the_hash_maker
  # results
  goo = [15, 8, 3, 17, 8, 10, 17]
  mmm = [14, 20, 8, 3, 18, 12, 14]
  adbe = [12, 3, 15, 6, 4, 8, 2]
  ea = [13, 10, 5, 9, 6, 3, 17]
  ba = [8, 5, 10, 15, 15, 18, 7]
  ko = [10, 19, 5, 6, 18, 20, 13]
  xom = [20, 12, 15, 8, 3, 5, 1]
  gps = [7, 6, 13, 1, 12, 11, 15]
  mcd = [11, 15, 10, 10, 19, 3, 15]
  dis = [15, 9, 18, 15, 3, 9, 10]
  crm = [6, 10, 5, 18, 7, 8, 9]
  jnj = [10, 17, 14, 3, 9, 15, 17]
  # Companies names
  companies = %i[GOO MMM ADBE EA BA KO XOM GPS MCD DIS CRM JNJ]
  results = [goo, mmm, adbe, ea, ba, ko, xom, gps, mcd, dis, crm, jnj]
  # Create the hash finally...
  the_hash = Hash.new {}
  # zip arrays, then make is a beautifull hash
  companies.zip(results) { |a, b| the_hash[a.to_sym] = b }
  the_hash
end

# (0..6) = (monday..sunday)
def to_days(array_position)
  days = %w[MON TUE WED THU FRI SAT SUN]
  days[array_position]
end

def launcher
  my_hash = the_hash_maker
  my_hash.each do |keys, values|
    moves = trader_du_dimanche(values)
    day_to_buy = to_days(moves[0])
    day_to_sell = to_days(moves[1])
    puts "#{keys} buy #{day_to_buy} for #{values[moves[0]]}$ sell #{day_to_sell} for #{values[moves[1]]}$"
  end
end
launcher
