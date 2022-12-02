# print a[0] and b[0]
# write and if statement to print true if a[0] is larger than b[0]
# ammend if statement to also print false if b[0] is larger than a[0]
# ammend if statement to also print nil if a[0] and b[0] are equal
# assign variable for a 'tally' and b 'tally' to int 0
# adjust if statement to add 1 to 'tally' variable if that corresponding value (a[0] or b[0]) is larger
# return a 'tally' and b 'tally' in an array
# iterate over if condition a N times with .length method (increase i)

def compare_triplets(a, b)
  tally_a = 0
  tally_b = 0
  i = 0
  while i < a.length
    if a[i] > b[i]
      tally_a += 1
    elsif b[i] > a[i]
      tally_b += 1
    end
    i += 1
  end
  results = [tally_a, tally_b]
  p results
end

a = [5, 6, 7]
b = [3, 6, 10]
compare_triplets(a, b)
