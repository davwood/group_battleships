class Board

  public

  def initialize()
  end

	def initialize_player
		@player = player
	end

	def owner
		@player.name
	end

	def register_shot_at_coordinates
	end


	def rows
   
    place_ships
	end

  def place_ships

  end

  def ships
    @ships = [@battleship, @cruiser, @aircraft_carrier, @destroyer, @submarine, @patrol_boat]
  end

	def opponent_view
	end

	private

	def battleship
    @battleship = ["s", "s", "s", "s"]
	end

	def cruiser
    @cruiser = ["s", "s", "s"]
	end

	def aircraft_carrier
    @aircraft_carrier = ["s", "s", "s", "s", "s"]
	end

  def destroyer
    @destroyer = ["s", "s", "s"]
  end

  def submarine
    @submarine = ["s", "s", "s"]
  end

  def patrol_boat
    @patrol_boat = ["s", "s"]
  end
end