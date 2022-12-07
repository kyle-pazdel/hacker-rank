# create integer variables equal to zero for positive, negative, and zero numbers
# iterate through array with an each loop and add one to each variable if the value correlates
# divide each variable by n and reassign the variables to the result

# INPUT
arr = [-4, 3, -9, 0, 4, 1]
# EXPECTED FRACTAL OUTPUT
# 3/5
# 2/5
# 1/5

def plusMinus(arr)
  pos = 0
  neg = 0
  zero = 0
  arr.each do |num|
    if num > 0
      pos += 1
    elsif num < 0
      neg += 1
    else
      zero += 1
    end
  end
  pos = sprintf("%.6f", (pos.to_f / arr.length.to_f))
  neg = sprintf("%.6f", (neg.to_f / arr.length.to_f))
  zero = sprintf("%.6f", (zero.to_f / arr.length.to_f))
  p pos.to_f
  p neg.to_f
  p zero.to_f
end

plusMinus(arr)
