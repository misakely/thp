#calories.rb

# This is the constants for Calories
CALORIES = Hash.new
CALORIES["Lipides"]= 9
CALORIES["Glucides"]= 4
CALORIES["Protéines"]= 4

# Meals
WELSH = Hash.new
WELSH["Lipides"]= 38.4
WELSH["Glucides"]= 18.3
WELSH["Protéines"]= 36.3

FRITES = Hash.new
FRITES["Lipides"]= 15
FRITES["Glucides"]= 41
FRITES["Protéines"]= 3.4

BIERE = Hash.new
BIERE["Lipides"]= 0
BIERE["Glucides"]= 25
BIERE["Protéines"]= 4

MENU = Hash.new
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE

PRIX = Hash.new
WELSH[:prix] = 15
FRITES[:prix] = 4
BIERE[:prix] = 5

p PRIX
def weight_watchers(dish)
  #return number of calories
  total = 0
  dish.each do |k,v|
    total += CALORIES[k].to_f * dish[k].to_f
  end
  return total
end

def meal_weight_watchers(menu)
  total = 0
  menu.each do |k,v|
    total += weight_watchers(v)
  end
  return total
end

def main
    puts "Il y a #{weight_watchers(WELSH)} calories dans un welsh..."
    puts "Menu: #{meal_weight_watchers(MENU)}"
end

main
