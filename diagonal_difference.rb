# arr[0][0], arr[1][1], arr[2][2]
# arr[0][3], arr[1][1], arr[2][0]
# add sum of primary diagonal
# # set middle position if < 5 to use integer in calc not float
# # set middle position for col and row in sum to n-line length to a float, divide by two.ceil minus 1.
# # set first position to zero col of zero row
# # set last position for row to row length minus 1
# # set last position for col to arr length minus 1
# add sum of secondary diagonal
# # set first position for zero row and col to row length minus 1
# # set middle position for col and row in sum to n-line length to a float, divide by two.ceil minus 1.
# # set last position for col arr length minus one and row row length minus one
# subtract primary from secondary diagonal
# add conditional to make number absolute by .abs method

# NEW SOLUTION!!
# Iterate over all values based on n increasing index by one for row and one for column for primary sum
# Iterate over all values based on n increasing index by one for row and decreasing by one for column for secondary sum
# subtract primary sum from secondary sum
# use .abs on the result and print

n = 3
arr = [[11, 2, 4],
       [4, 5, 6],
       [10, 8, -12]]

arr2 = [[1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1]]

arr3 = [[6, 6, 7, -10, 9, -3, 8, 9, -1],
        [9, 7, -10, 6, 4, 1, 6, 1, 1],
        [-1, -2, 4, -6, 1, -4, -6, 3, 9],
        [-8, 7, 6, -1, -6, -6, 6, -7, 2],
        [-10, -4, 9, 1, -7, 8, -5, 3, -5],
        [-8, -3, -4, 2, -3, 7, -5, 1, -5],
        [-2, -7, -4, 8, 3, -1, 8, 2, 3],
        [-3, 4, 6, -7, -7, -8, -3, 9, -6],
        [-2, 0, 5, 4, 4, 4, -3, 3, 0]]

def diagonal_difference(arr)
  i = 0
  prim_sum = 0
  while i < arr.length
    prim_sum += arr[i][i]
    i += 1
  end
  i = 0
  i2 = arr.length - 1
  sec_sum = 0
  while i < arr.length
    sec_sum += arr[i][i2]
    i += 1
    i2 -= 1
  end
  absolute_difference = (prim_sum - sec_sum).abs
  p absolute_difference
end

diagonal_difference(arr2)
