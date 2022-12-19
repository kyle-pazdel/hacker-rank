# Add values 0 - 3 together and print the sum on one line
# Add values 1 - 4 together and print the sum on one line
# Print first and second sum together on one line
# set a variable to "Maximum sum: #{}" equal tomax_sum 0
# set a variable to min_sum equal to 0
# set an index to 0
# add all numbers except the index together and assign it to min sum
# set index to 1
# add all numbers except the index together

# write conditional, if new total is greater than min sum, set it to max_sum
# if new total is less than min sum, assign min_sum to max_sum and assign new total to min_sum

# set index to 2
# add all numbers except the index together
# write conditional, if new total is greater than max sum, set it to max_sum
# if new total is less than min sum, set it to min_sum

# set an index to 0
# set a variable to max_sum equal to 0
# set a variable to min_sum equal to 0
# iterate with a while loop for one iteration
# within the loop add all numbers except the index together
# set the sum to min_sum
# set the sum to max_sum

# set index to 1
# write another while loop to iterate over the remaining length of the array
# add all numbers except the index together

# write a conditional, if the sum is less than min_sum, set it to min_sum
# if the sum is greater than max_sum, set it to max_sum
# print the min and max sum values on one line

# Write a loop using i to iterate over each integer in array and perform the previously written logic for comparing sums for min and max

# sum = arr[0] + arr[1] + arr[2] + arr[3]
# puts sum
# sum2 = arr[1] + arr[2] + arr[3] + arr[4]
# puts sum2
# puts "#{sum} #{sum2}"
# max_sum = 0
# min_sum = 0

# min_sum = 0
# i = 0
# x = 0
# while x < arr.length
#   unless x == i
#     min_sum += arr[x]
#   end
#   x += 1
# end
# puts "Minimum sum: #{min_sum}"

# new_sum = 0
# i = 1
# x = 0
# while x < arr.length
#   unless x == i
#     new_sum += arr[x]
#   end
#   x += 1
# end
# puts "New sum: #{new_sum}"

# if new_sum > min_sum
#   max_sum = new_sum
# elsif new_sum < min_sum
#   max_sum = min_sum
#   min_sum = new_sum
# end
# puts "Minimum sum: #{min_sum}"
# puts "Maximum sum: #{max_sum}"

# new_sum = 0
# i = 2
# x = 0
# while x < arr.length
#   unless x == i
#     new_sum += arr[x]
#   end
#   x += 1
# end

# if new_sum > max_sum
#   max_sum = new_sum
# elsif new_sum < min_sum
#   min_sum = new_sum
# end
# puts "Minimum sum: #{min_sum}"
# puts "Maximum sum: #{max_sum}"

# i = 0
# x = 0
# sum = 0
# while x < arr.length
#   unless x == i
#     sum += arr[x]
#   end
#   x += 1
# end
# min_sum = sum
# max_sum = sum
# puts "Min sum: #{min_sum}, Max sum: #{max_sum}"
# i = 1
# x = 0
# sum = 0
# while x < arr.length
#   unless x == i
#     sum += arr[x]
#   end
#   x += 1
# end
# puts "New sum: #{sum}"

# if sum < min_sum
#   min_sum = sum
# elsif sum > max_sum
#   max_sum = sum
# end
# puts "Min sum: #{min_sum}"
# puts "Max sum: #{max_sum}"

# arr = [1, 2, 3, 4, 5]
arr = [769082435, 210437958, 673982045, 375809214, 380564127]
# expected output: 1640793344 2199437821

arr = arr.sort
i = 0
i2 = arr.length - 1
4.times do
  min_sum += arr[i]
  max_sum += arr[i2]
  i += 1
  i2 -= 1
end
puts "#{min_sum} #{max_sum}"

# x = 0
# sum = 0
# while x < arr.length
#   unless x == 0
#     sum += arr[x]
#   end
#   x += 1
# end
# min_sum = sum
# max_sum = sum
# i = 1
# while i < arr.length
#   x = 0
#   sum = 0
#   while x < arr.length
#     unless x == i
#       sum += arr[x]
#     end
#     x += 1
#   end
#   if sum < min_sum
#     min_sum = sum
#   elsif sum > max_sum
#     max_sum = sum
#   end
#   i += 1
# end
# puts "#{min_sum} #{max_sum}"
