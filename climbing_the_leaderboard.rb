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

ranked_short = []
i = 0
while i < ranked.length - 1
  if ranked[i] != ranked[i + 1]
    ranked_short << ranked[i]
  end
  i += 1
end
ranked_short << ranked[-1]
p ranked_short

ranked_short = [100, 90, 80, 75, 60]
player = [50, 65, 77, 90, 102]

ranked_short_length = ranked_short.length
i = 0
player_rankings = []
while i < ranked_short_length - 1
  rank = ranked_short_length
  score = player[i]
  j = ranked_short_length - 1
  while rank >= 0 && score >= ranked_short[j]
    rank -= 1
    j -= 1
  end
  player_rankings << rank + 1
  i += 1
  p player_rankings
end
