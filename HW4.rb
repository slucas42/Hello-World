#hw1
#Make a Ruby class called TeamPicker that gets initialized with a full array of player names and that has 
#a method called "random_five" that will randomly return 5 *unique* names from the full array of player names.

#Interesting extra credit: print a warning message if someone calls the "random_five" method and the full 
#list of players is LESS than 5




class TeamPicker
	def initialize(name_input)
		@name = name_input
	end	

	def name
		@name
		puts @name	
	end

	def random_five
		if @name.size >= 5
			all_players = []
			while(all_players.size < 5) do
				player = @name[rand(@name.size)]
				if !all_players.include?(player)
      				all_players << player
      			end
      		end
			all_players
		else
			puts "There are not enough players!"
		end
	end
end

players_1=TeamPicker.new(["Ron", "Harry", "Stuart", "Jane", "Maki", "Betty"])
puts players_1.random_five

