class Board

  public

  def initialize
    @board_hash = {}
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

	def register_shot(at_coordinates)
    letter = at_coordinates.chars[0].upcase
    number_index = at_coordinates.chars[1].to_i - 1
    letter_hash = {"A" => 0, "B" => 1, "C" => 2, "D" => 3
      "E" => 4, "F" => 5, "G" => 6, "H" => 7 
      "I" => 8, "J" => 9 }
    letter_index = letter_hash[letter]

    return puts 'ship hit!' @board_array[letter_index][number_index] = 'x' if @board_array[letter_index][number_index] == 's'
    return puts 'You missed!' @board_array[letter_index][number_index] = 'o' 
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
        ship.horizontal?(ship, probability = nil)
      # ship.each do |section|
      # end
    end
  end

## HORIZONTAL OR VERTICAL?
  
  def horizontal?(ship, probability = nil)
    probability ||= rand(1..2)

    if probability == 1
      place horizontal(ship)
    else
      place_vertical(ship)
    end
  end

## PLACE HORIZONTALLY OR VERTICALLY

  def place_horizontal(ship)
    x = random_row
    board_array[x..(x.ship.length)].each do |element|
      element = "s"
    end
  end

  def place_vertical(ship)
    y = random_column
    x = rand(1..5)
    l = ship.length
    @board_array[x..(x+l)]
  end


## TO PICK WHICH ARRAY IF HORIZONTAL

  def random_row(ship)
    rand(1..10)
  end

## TO PICK WHICH INDEX IF VERTICAL

  def random_column(ship)
    rand(1..10)
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