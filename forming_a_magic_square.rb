# Check for duplicates in arrays to figure indeces of duplicates
# # compare first array to itself, then to the second and third arrays
# # compare second array to third array

# # MAKE A HASH with keys 1 through 9 and add to the value for each instance of the integer in the 2D array

# Check for numbers missing in 1..9
# # *method pending*

# Find the index of each duplicate
# After checking for missing numbers and duplicates, use the index to find which tow, column and diagonal the duplicates and missing numbers are in

# write a conditional to insert a missing number into the index of a duplicate if that row, column or diagonal does not add up to 9

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

row_numbers = {}
for i in 1..9
  row_numbers[i] = [i, 0]
end
i = 0
while i < s.length
  j = 0
  while j < s.length
    num = s[i][j]
    row_numbers[num][1] += 1
    j += 1
  end
  i += 1
end
p "row_numbers: #{row_numbers}"

col_numbers = {}
for i in 1..9
  col_numbers[i] = [i, 0]
end
i = 0
while i < s.length
  j = 0
  while j < s.length
    num = s[j][i]
    col_numbers[num][1] += 1
    j += 1
  end
  i += 1
end
p "col_numbers: #{col_numbers} "

diagonal_numbers = {}
for i in 1..9
  diagonal_numbers[i] = [i, 0]
end
i = 0
j = 2
while i < s.length
  num = s[i][i]
  num2 = s[i][j]
  if i != 1 || j != 1
    diagonal_numbers[num][1] += 1
    diagonal_numbers[num2][1] += 1
  end
  j -= 1
  i += 1
end
middle_number = s[1][1]
diagonal_numbers[middle_number][1] += 1
p "dia_numbers: #{diagonal_numbers}"

# Check for missing numbers in rows first...
def missing_numbers(numbers)
  missing_numbers = []
  for num in 1..9
    if numbers[num][1] == 0
      missing_numbers << numbers[num][0]
    end
  end
  return missing_numbers
end

# Check for duplicate numbers in rows first...
def duplicate_numbers(numbers)
  duplicate_numbers = []
  for num in 1..9
    if numbers[num][1] == 2
      duplicate_numbers << numbers[num][0]
    end
  end
  return duplicate_numbers
end

# p "Missing from rows: #{missing_numbers(row_numbers)}"
p "Duplicates from rows: #{duplicate_numbers(row_numbers)}"
row_duplicates = duplicate_numbers(row_numbers)
# p "Missing from cols: #{missing_numbers(col_numbers)}"
col_duplicates = duplicate_numbers(col_numbers)
# p "Missing from dias: #{missing_numbers(diagonal_numbers)}"
# p "Duplicates from dias: #{duplicate_numbers(diagonal_numbers)}"
diagonal_duplicates = duplicate_numbers(diagonal_numbers)

# Find indices for duplicates
p s[0].index()
i = 0
while i < s.length
  j = 0
  while j < s.length
    if s[i][j] == row_duplicates[i]
      p s[i][j]
      p s[i].index(row_duplicates[i])
    end
    j += 1
  end
  i += 1
end

# p s[0].index(2)

# def total_array_sum(arr)
#   puts "Total Sum"
#   sum = 0
#   i = 0
#   while i < arr.length
#     j = 0
#     while j < arr.length
#       sum += arr[i][j]
#       j += 1
#     end
#     i += 1
#   end
#   p sum
# end

# total_array_sum(s)

# def array_row_sums(arr)
#   puts "Row Sums"
#   i = 0
#   while i < arr.length
#     sum = 0
#     j = 0
#     while j < arr.length
#       sum += arr[i][j]
#       j += 1
#     end
#     p sum
#     i += 1
#   end
# end

# array_row_sums(s)

# def array_column_sum(arr)
#   puts "Column Sums"
#   i = 0
#   while i < arr.length
#     sum = 0
#     j = 0
#     while j < arr.length
#       sum += arr[j][i]
#       j += 1
#     end
#     p sum
#     i += 1
#   end
# end

# array_column_sum(s)

# def array_diagonal_sum(arr)
#   puts "Diagonal Sums"
#   i = 0
#   j = 2
#   sum1 = 0
#   sum2 = 0
#   while i < arr.length
#     sum1 += arr[i][i]
#     sum2 += arr[i][j]
#     i += 1
#     j -= 1
#   end
#   p sum1
#   p sum2
# end

# array_diagonal_sum(s)
