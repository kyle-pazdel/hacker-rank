# shovel first score into ranked
# remove duplicates from ranked array
# sort ranked and reverse ranked array
# search ranked for first score, print its index plus one to find rank
# ________________________________________________________________________________________________
# iterate through the player array
# search for the current index of the player array in the ranked array and return the index + 1

# arr.sort_by{|a,b| b <=> a}

# https://apidock.com/ruby/Array/find_index

n = 6
ranked = [100, 90, 90, 80, 75, 60]
m = 5
player = [50, 65, 77, 90, 102]

player_rankings = []
for i in player
  ranked << i
  ranked = ranked.uniq.sort.reverse
  player_rankings << ranked.find_index(i) + 1
end
player_rankings = player_rankings.sort.reverse
p player_rankings

# n = 6
# ranked = [100, 90, 90, 80, 75, 60]
# m = 5
# player = [50, 65, 77, 90, 102]

# p ranked
# ranked << player[0]
# p ranked
# ranked = ranked.uniq.sort.reverse
# p ranked
# puts ranked.find_index(player[0]) + 1
# p "   "
# ranked.delete(player[0])
# p ranked
# ranked << player[1]
# p ranked
# ranked = ranked.uniq.sort.reverse
# p ranked
# puts ranked.find_index(player[1]) + 1
# p "   "
# ranked.delete(player[1])
# p ranked
# ranked << player[2]
# p ranked
# ranked = ranked.uniq.sort.reverse
# p ranked
# puts ranked.find_index(player[2]) + 1

# i = 0
# while i < ranked.length
#   if i != 0
#     ranked.delete(player[i - 1])
#   end
#   ranked << player[i]
#   ranked = ranked.uniq.sort.reverse
#   puts ranked.find_index(player[i]) + 1
#   i += 1
# end
