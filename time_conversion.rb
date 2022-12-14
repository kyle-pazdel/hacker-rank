# Check P or A in s time
# Write condition to add 12 to the first two digits of s if P
# assign all except for AM/PM to m variable

# s = "07:05:45AM"
s = "12:45:54PM"
# s = "12:45:54AM"
# s = "06:40:03AM"
# s = "12:45:54PM"

is_pm = false
if s[-2] == "P"
  is_pm = true
end
new_hour = s[0] + s[1]
s = s.split("")
n = []
if is_pm == true && new_hour != "12"
  new_hour = new_hour.to_i + 12
  s[1] = s[1].to_s
  i = 2
  n << new_hour
  while i < s.length - 2
    n << s[i]
    i += 1
  end
elsif is_pm == false && s[-2] == "A" && new_hour == "12"
  new_hour = "00"
  i = 2
  n << new_hour
  while i < s.length - 2
    n << s[i]
    i += 1
  end
else
  i = 0
  while i < s.length - 2
    n << s[i]
    i += 1
  end
end
n = n.join
p n
