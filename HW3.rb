#this is for HW3 - the quidditch game
# Below is a copy and paste from the slack channel of the scaffolding for the homework

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
def build_list_of_players(name)
    the_players = ["Harry", "Ron", "James", "Jane", "Sarah", "George", "Fred", "Ben", "Genny", "Mary"]
end
# this method should select 5 random players from the array "full_list_of_players"
# (notice the method call includes an empty array! why?)
def select_players_for_gryffindor(full_list_of_players, already_used_players)
    random_number = rand(5)
    gryffindor = the_players[random_number]
    puts "#{name} will play for gryffindor!"
end
# this method should select 5 DIFFERENT players from the array "players"
# (e.g. it can't include any players that are already in gryffindor)
def select_players_for_slytherin(full_list_of_players, already_used_players)
  slytherin = the_players.keep_if {the_players != gryffindor}
  puts "#{name} will play for slytherin!"
end
#this method should pick a random player from a random team, and print out who scored (and also increment the score by 10
def determine_who_scored(team1, team2, scores)
  random_player = rand(1)
  def score(x)
    x+10
  end
  puts "#{random_player} has scored #{score}!"
end
# this method randomly pick either team1 or team2 to catch the snitch (and increase their score by 30)
# it also prints both the team1 and team2 scores, e.g "team 1 scored xxx points!", etc.
# lastly, it prints out who the winner is based on both final scores (the greater score wins)
def finalize_game(scores)
  random_team = rand(1)
  snitch = (score +30)
  team.each {|snitch| puts "#{random_team} scored #{snitch} points!"
  winner = 
end