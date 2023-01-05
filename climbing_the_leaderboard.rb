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

# RECREATION OF SOLUTION ONLINE:
ranked_length = ranked.length
compressed_ranked_length = 0
compressed_rank = []
i = 0
while i < ranked_length
  j = i
  compressed_rank.append(ranked[i])
  compressed_ranked_length += 1
  while j < ranked_length && ranked[i] == ranked[j]
    j += 1
  end
  i = j
end

ranks = []
rank = compressed_ranked_length
for score in player
  while rank > 0 && score >= compressed_rank[rank - 1]
    rank -= 1
  end
  if rank == compressed_ranked_length
    compressed_rank.append(score)
  else
    compressed_rank.insert(rank, score)
  end
  compressed_ranked_length += 1
  ranks.append(rank + 1)
end
p ranks

# FIRST SOLUTION:
# player_rankings = []
# for i in player
#   ranked << i
#   ranked = ranked.uniq.sort.reverse
#   player_rankings << ranked.find_index(i) + 1
# end
# player_rankings = player_rankings.sort.reverse
# p player_rankings

# SECOND SOLUTION:
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
