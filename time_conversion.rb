# Check P or A in s time
# Write condition to add 12 to the first two digits of s if P
# assign all except for AM/PM to m variable

s = "07:05:45AM"
# s = "12:45:54PM"
p s[0]
p s[1]
is_pm = false
if s[-2] == "P" && s[0] != "1" && s[1] != 2
  is_pm = true
end
p is_pm
if is_pm == true
  s = s.split("")
  s[1] = s[1].to_i + 12
  s[1] = s[1].to_s
  n = []
  i = 1
  while i < s.length - 2
    n << s[i]
    i += 1
  end
  n = n.join
  p n
else
  s = s.split("")
  n = []
  i = 0
  while i < s.length - 2
    n << s[i]
    i += 1
  end
  n = n.join
end
p n
