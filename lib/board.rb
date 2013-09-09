class Board

  public

  def initialize
    @board_array = []
  end

  def board_array
    board_array = @board_array
  end

	def initialize_player
		@player = player
    # board = Board.new
	end

	def owner
		@player.name
	end

	def register_shot_at_coordinates
	end

	def rows
    10.times do 
        @board_array << %w("" "" "" "" "" "" "" "" "" "")
    end

    # place_ships
    @board_array
	end

  def place_ships
    @ships.each do |ship|
      ship.each do |section|
        section 
      end
    end
  end

## HORIZONTAL OR VERTICAL?
  
  def horizontal?(probability = nil)
    probability ||= rand(1..2)
    
    if probability == 1
      random array
    else
      random index
    end
  end


## TO PICK WHICH ARRAY IF HORIZONTAL

  def random_array
  end

## TO PICK WHICH INDEX IF VERTICAL

  def random_index
    end

  def ships
    @ships = [@battleship, @cruiser, @aircraft_carrier, @destroyer, @submarine, @patrol_boat]
  end

	def opponent_view
	end

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