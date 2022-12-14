# Sort candles
# Create max_value variable assigned to 0
# Assign last variable in array to max_value
# Iterate through candles with an each loop
# assign a variable tallest to 0
# Write a conditional, if a candle is equivalent to the max_value, increase tallest by one
# Print tallest

n = 4
candles = [3, 2, 1, 3]
candles = candles.sort
max_value = candles[-1]
tallest = 0
candles.each do |candle|
  if candle == max_value
    tallest += 1
  end
end
p tallest
