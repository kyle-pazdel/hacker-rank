# insert n "#"'s into an array
# insert that array into a second array
# test
# insert n - 1 "#"'s into an array
# iterate with a while loop to subract 1 from the number of "#"'s until only one is inserted
# test by printing out array one element at a time
# revisit while loop and after inserting "#"'s, insert the inverse (up to 6) number of " "'s
# test by printing out the 2D array

# staircase = "     #    ##   ###  #### ###########"

arr = []
# arr << " " * s
# arr << "#" * n
# p arr
# arr << " " * (s + 1)
# arr << "#" * (n - 1)
# p arr

n = 6
s = 1
# while s <= 6
#   p " " * n + "#" * s
#   s += 1
#   n -= 1
# end
while s <= 6
  arr << [" "] * (n - 1) + ["#"] * s
  s += 1
  n -= 1
end
p arr

# while s <= 6
#   str = " " * n + "#" * s
#   str.gsub!('"', "")
#   arr << str
#   s += 1
#   n -= 1
# end
# p arr

i = 6
while i > 0
  p arr[i][i]
  i -= 1
end
