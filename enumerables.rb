require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  result =spicy_foods.map do |foods|
   foods[:name]
  end
  result
end

def spiciest_foods(spicy_foods)
  result = spicy_foods.filter do |foods|
    foods[:heat_level] > 5
   end
   result
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |foods|
    puts "#{foods[:name]} (#{foods[:cuisine]}) | Heat Level: #{"🌶" * foods[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
 result =  spicy_foods.find do |foods|
    foods[:cuisine] == cuisine
 end
 result
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  result = spicy_foods.sort_by do |foods|
    foods[:heat_level]
  end
  result
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  high_spice = spicy_foods.filter do |foods|
    foods[:heat_level] > 5
  end
  high_spice.each do |foods|
    puts "#{foods[:name]} (#{foods[:cuisine]}) | Heat Level: #{"🌶" * foods[:heat_level]}" 
    end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
    result = spicy_foods.map do |foods|
      foods[:heat_level]
    end
    result.sum / 3
end
