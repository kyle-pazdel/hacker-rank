# shovel first score into ranked
# remove duplicates from ranked array
# sort ranked and reverse ranked array
# search ranked for first score, print its index plus one to find rank
# ________________________________________________________________________________________________
# iterate through the player array
# search for the current index of the player array in the ranked array and return the index + 1

# arr.sort_by{|a,b| b <=> a}

# https://apidock.com/ruby/Array/find_index

# ranked = [100, 90, 90, 80, 75, 60]
# player = [50, 65, 77, 90, 102]

player = [5, 25, 50, 120]
ranked = [100, 100, 50, 40, 40, 20, 10]

ranked_short = []
i = 0
while i < ranked.length - 1
  if ranked[i] != ranked[i + 1]
    ranked_short << ranked[i]
  end
  i += 1
end
ranked_short << ranked[-1]

ranked = [100, 50, 40, 20, 10]
p ranked_short

ranked_short_length = ranked_short.length
i = 0
player_rankings = []
while i < player.length
  rank = ranked_short_length
  score = player[i]
  j = ranked_short_length - 1
  while rank > 0 && score >= ranked_short[j]
    p "ranked_short[j]: #{ranked_short[j]}"
    p "score: #{score}"
    p "rank: #{rank + 1}"
    rank -= 1
    j -= 1
  end
  p "j: #{j}"
  p "rank: #{rank}"
  p "Final Rank: #{rank + 1}"
  p "________________________________________"
  player_rankings << rank + 1
  i += 1
end
p player_rankings

# ranked_short_length = ranked_short.length
# i = 0
# player_rankings = []
# while i < ranked_short_length
#   rank = ranked_short_length
#   score = player[i]
#   j = ranked_short_length - 1
#   while rank > 0 && score >= ranked_short[j]
#     rank -= 1
#     j -= 1
#   end
#   p "ranked_short[j]: #{ranked_short[j]}"
#   p "score: #{score}"
#   p "rank: #{rank}"
#   player_rankings << rank + 1
#   i += 1
#   p player_rankings
# end

# ranked_short_length = ranked_short.length
# i = 0
# player_rankings = []
# while i < ranked_short_length - 1
#   rank = ranked_short_length
#   score = player[i]
#   j = ranked_short_length - 1
#   while rank >= 0 && score >= ranked_short[j]
#     rank -= 1
#     j -= 1
#   end
#   player_rankings << rank + 1
#   i += 1
#   p player_rankings
# end
