@array = [17,3,6,9,15,8,6,1,10]

def trader_du_dimanche(prices)
  # Return a pair representing best day to buy and to sell (best diff)
  highest_diff = 0
  pair = [0,0]
  # For every day
  for i in 0...prices.length do
    # For days after i
    for j in i...prices.length do
      if (prices[j] - prices[i]) > highest_diff
        highest_diff = prices[j] - prices[i]
        pair = [i,j]
      end
    end
  end
  return pair
end

def launcher
  p trader_du_dimanche(@array)
end

launcher
