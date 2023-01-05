# set 'late' variable to zero: to track late students
# iterate through array and add one to 'late' variable for every a[i] that is greater than zero
# compare 'late' to k
# write a conditional to return "YES" is 'late' is greater than k and "NO" is 'late' is less than or equal to k

def angry_professor(k, a)
  on_time = 0
  for i in a
    if i <= 0
      on_time += 1
    end
  end
  if on_time >= k
    p "NO"
  else
    p "YES"
  end
end

k = 3
a = [-1, -3, 4, 2]
angry_professor(k, a)

k = 2
a = [0, -1, 2, 1]
angry_professor(k, a)
