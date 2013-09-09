class Player 

	def initialize(name)
	    @name = name
	    @board = [['s', 's', '', 's', '', '', 's', 's', 's', 's']]
	end 

	def name
		@name
	end   

	def has_ships_still_floating?
		puts @board.include?("s")
		puts @board.inspect
	end

	def shoots_at_the_opponents_board
	end 


end 