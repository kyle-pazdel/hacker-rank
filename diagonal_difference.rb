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

n = 3
arr = [[11, 2, 4],
       [4, 5, 6],
       [10, 8, -12]]

def diagonal_difference(arr)
  f = 0
  m_int = arr.length / 2
  m_float = (arr.length.to_f / 2).ceil
  l = arr.length - 1

  if arr.length < 5
    m = arr[m_int][m_int]
  else
    m = arr[m_float][m_float]
  end
  primary_sum = arr[f][f] + m + arr[l][l]
  secondary_sum = arr[f][l] + m + arr[l][f]
  absolute_sum = (primary_sum - secondary_sum).abs
  p absolute_sum
end

diagonal_difference(arr)

# arr2 = [[1, 2, 3, 4, 5],
#         [1, 2, 3, 4, 5],
#         [1, 2, 3, 4, 5],
#         [1, 2, 3, 4, 5],
#         [1, 2, 3, 4, 5]]

# p (7.to_f / 2).ceil
# p (arr.length.to_f / 2).ceil
# p m
