# insert n "#"'s into an array
# insert that array into a second array
# test
# insert n - 1 "#"'s into an array
# iterate with a while loop to subract 1 from the number of "#"'s until only one is inserted
# test by printing out array one element at a time
# revisit while loop and after inserting "#"'s, insert the inverse (up to 6) number of " "'s
# test by printing out the 2D array

# staircase = "     #    ##   ###  #### ###########"

# arr << " " * s
# arr << "#" * n
# p arr
# arr << " " * (s + 1)
# arr << "#" * (n - 1)
# p arr

# PICKUP HERE: Need to adjust variables to account for scalable n (see while loop involving s)

arr = []

n = 6
i = n
s = 1
while s <= i
  str = " " * (n - 1) + "#" * s
  puts str
  s += 1
  n -= 1
end

# p arr

# while s <= n
#   arr << " " * (n - 1) + "#" * s
#   s += 1
#   n -= 1
# end
# i = 0
# while i < 6
#   puts arr[i]
#   i += 1
# end

# while s <= 6
#   arr << [" "] * (n - 1) + ["#"] * s
#   s += 1
#   n -= 1
# end
# puts arr[5]
# print arr[4]
# p arr
