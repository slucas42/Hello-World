 # this method will be what gets run at the bottom of this file to kick off the game
def start_game
  players = build_list_of_players
  team1 = select_players_for_gryffindor(players, [])
  team2 = select_players_for_slytherin(players, team1)
  team1_score = 0
  team2_score = 0
  scores = [ team1_score, team2_score ]
  puts "brooms up!!"
  60.times do
    puts "another minute has gone by..."
    sleep 1 # this is new! write a comment, what does this line of code do?
    determine_who_scored(team1, team2, scores)
  end
  finalize_game(team1, team2, scores)
end
# this method should return an array of 10 players
def build_list_of_players
end
# this method should select 5 random players from the array "full_list_of_players"
# (notice the method call includes an empty array! why?)
def select_players_for_gryffindor(full_list_of_players, already_used_players)
end
# this method should select 5 DIFFERENT players from the array "players"
# (e.g. it can't include any players that are already in gryffindor)
def select_players_for_slytherin(full_list_of_players, already_used_players)
end
this method should pick a random player from a random team, and print out who scored (and also increment the score by 10
def determine_who_scored(team1, team2, scores)
end
# this method randomly pick either team1 or team2 to catch the snitch (and increase their score by 30)
# it also prints both the team1 and team2 scores, e.g "team 1 scored xxx points!", etc.
# lastly, it prints out who the winner is based on both final scores (the greater score wins)
def finalize_game(scores)
end