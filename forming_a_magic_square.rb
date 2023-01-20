# Check for duplicates in arrays to figure indeces of duplicates
# # compare first array to itself, then to the second and third arrays
# # compare second array to third array

# Check for numbers missing in 1..9
# # *method pending*

# # MAKE A HASH with keys 1 through 9 and add to the value for each instance of the integer in the 2D array

# # FOR CALCULATING COST:
# Cost is the absolute value of the difference of all numbers and what they are changed with.
# Subtract new number from old humber, then repeat for all exchanges
# add all differences together and find the absolute value of that number to calculate cost of changes.

# TEST CASE ONE
# s = [[4, 9, 2],
#      [3, 5, 7],
#      [8, 1, 5]]

# s = [[4, 9, 2],
#      [3, 5, 7],
#      [8, 1, 6]]

output = 1

# TEST CASE TWO
# s = [[4, 8, 2], [4, 5, 7], [6, 1, 6]]
# s = [[4, 9, 2], [3, 5, 7], [8, 1, 6]]

# TEST CASE THREE
s = [[4, 8, 2],
     [4, 5, 7],
     [6, 2, 6]]

def total_array_sum(arr)
  puts "Total Sum"
  sum = 0
  i = 0
  while i < arr.length
    j = 0
    while j < arr.length
      sum += arr[i][j]
      j += 1
    end
    i += 1
  end
  p sum
end

total_array_sum(s)

def array_row_sums(arr)
  puts "Row Sums"
  i = 0
  while i < arr.length
    sum = 0
    j = 0
    while j < arr.length
      sum += arr[i][j]
      j += 1
    end
    p sum
    i += 1
  end
end

array_row_sums(s)

def array_column_sum(arr)
  puts "Column Sums"
  i = 0
  while i < arr.length
    sum = 0
    j = 0
    while j < arr.length
      sum += arr[j][i]
      j += 1
    end
    p sum
    i += 1
  end
end

array_column_sum(s)

def array_diagonal_sum(arr)
  puts "Diagonal Sums"
  i = 0
  j = 2
  sum1 = 0
  sum2 = 0
  while i < arr.length
    sum1 += arr[i][i]
    sum2 += arr[i][j]
    i += 1
    j -= 1
  end
  p sum1
  p sum2
end

array_diagonal_sum(s)
