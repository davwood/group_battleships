class Player 

	def initialize(name)
	    @name = name
	end 

	def name
		@name
	end   

	def has_ships_still_floating?(my_board)
		@flat_board = my_board.flatten
		@flat_board.include?('s')
	end

	def shoots(at_coordinates, opponent_board)
		opponent_board.register_shot(at_coordinates)
	end 

	

end 