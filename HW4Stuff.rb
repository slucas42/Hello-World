#hw1
#Make a Ruby class called TeamPicker that gets initialized with a full array of player names and that has a method called "random_five" that will randomly return 5 *unique* names from the full array of player names.
#Interesting extra credit: print a warning message if someone calls the "random_five" method and the full list of players is LESS than 5

#to keep from having overlapping players:

team1 = Team.new # id 1
team2 = Team.new # id 2
player1 = Player.new # id 1
player2 = Player.new # id 2
player3 = Player.new # id 3
player4 = Player.new # id 4
Membership.new(player1, team1)
Membership.new(player4, team1)
Membership.new(player2, team2)
Membership.new(player1, team2) # BOOOOM!!!!! PLAYER 1 IS ALREADY ON TEAM 1!!!


#Quidditch Game Cliffs Code:

# this method will be what gets run at the bottom of this file to kick off the game
def start_game
  players = build_list_of_players
  team1 = select_players_for_gryffindor(players, [])
  team2 = select_players_for_slytherin(players, team1)
  puts "team1 is #{team1.join(", ")}"
  puts "team2 is #{team2.join(", ")}"
  puts
  team1_score = 0
  team2_score = 0
  scores = [ team1_score, team2_score ]
  puts "brooms up!!"
  60.times do
    sleep 0.1 # this is new! write a comment, what does this line of code do?
    determine_who_scored(team1, team2, scores)
    puts "another minute has gone by..."
  end
  finalize_game(scores)
end
# this method should return an array of 10 players
def build_list_of_players
  [
    "cliff",
    "anne",
    "harry",
    "sam",
    "devin",
    "ally",
    "bob",
    "jane",
    "jimmy",
    "dave"
  ]
end
# this method should select 5 random players from the array "full_list_of_players"
# (notice the method call includes an empty array! why?)
def select_players_for_gryffindor(full_list_of_players, already_used_players)
  players = []
  while(players.size < 5) do
    player = full_list_of_players[rand(full_list_of_players.size)]
    if !players.include?(player)
      players << player
    end
  end
  players
end
# this method should select 5 DIFFERENT players from the array "players"
# (e.g. it can't include any players that are already in gryffindor)
def select_players_for_slytherin(full_list_of_players, already_used_players)
  players = []
  while(players.size < 5) do
    player = full_list_of_players[rand(full_list_of_players.size)]
    if !already_used_players.include?(player) && !players.include?(player)
      players << player
    end
  end
  players
end
# this method should pick a random player from a random team, and print out who scored (and also increment the score by 10
def determine_who_scored(team1, team2, scores)
  if rand(2) == 1
    scores[0] += 10
    player = team1[rand(team1.size)]
    puts "#{player} from team 1 scored!"
  else
    scores[1] += 10
    player = team2[rand(team2.size)]
    puts "#{player} from team 2 scored!"
  end
end
# this method randomly pick either team1 or team2 to catch the snitch (and increase their score by 30)
# it also prints both the team1 and team2 scores, e.g "team 1 scored xxx points!", etc.
# lastly, it prints out who the winner is based on both final scores (the greater score wins)
def finalize_game(scores)
  if rand(2) == 1
    puts "team1 caught the snitch!"
    scores[0] += 30
  else
    puts "team2 caught the snitch!"
    scores[1] += 30
  end
  puts "team1 scored #{scores[0]}"
  puts "team2 scored #{scores[1]}"
  if scores[0] > scores[1]
    puts "team1 wins!"
  elsif scores[0] < scores[0]
    puts "team2 wins!"
  elsif scores[0] == scores[1]
    puts "OMFG a tie!"
  else
    puts "LJSFAJSKJFDLKFJaljdfjlasfdjklfjlaskfj"
  end
end
start_game



#intro to classes

# every class has an "initialize" method that's called when you call new,
# for example:
#   player = Player.new("Tanne")
#
class Player
  # the @ sign means it's an "instance variable",
  # which is set for any instance of a class
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
# make a new instance of Player by doing this:
# player = Player.new("Some Name Goes here")
class Human
  def initialize(name, age, height, weight, occupation)
    @name       = name
    @age        = age
    @height     = height
    @weight     = weight
    @occupation = occupation
  end
  def cheerful_greeting
    "Hello! My name is #{@name} and I don't care that I am only #{height} feet tall!"
  end
  def wake_up_time
    if @age < 30
      "12:00pm"
    else
      "5:00am"
    end
  end
  def grumpy_greeting
    "leave me alone"
  end
  def name
    @name
  end
  def age
    @age
  end
  def height
    @height
  end
  def weight
    @weight
  end
  def occupation
    @occupation
  end
end

#chess!

class Player
  def initialize(name_input)
    @name = name_input
  end
  def name
    @name
  end
end
class ChessGame
  def initialize
    @player1 = Player.new("cliff")
    @player2 = Player.new("tanne")
  end
  def start
    puts "#{@player1.name} is playing #{@player2.name}"
  end
end
game = ChessGame.new
game.start

#below only works on mac

class Sound
  def self.boop
    `say boop`
  end
end
Sound.boop

#weather
class Weather
  def initialize
    @current_weather = Weather.possible_weather.sample
  end
  def current_weather
    @current_weather
  end
  def self.possible_weather
    [
      "rain",
      "snow",
      "sunny",
      "cloudy"
    ]
  end
end
weather = Weather.new
puts "It's currently #{weather.current_weather} but it could also sometimes be #{Weather.possible_weather}"


#student body

class StudentBody
  def self.all
    [
      'anne',
      'sam',
      'cloaf',
      'devonn'
    ]
  end
end

