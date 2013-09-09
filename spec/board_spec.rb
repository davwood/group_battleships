require'./lib/board'

describe Board do

let (:board) {Board.new}

#### ASK ENRIQUE HOW TO TEST PRIVATE METHODS

######### UPON INITIALIZATION
#######################

	it 'should initialize with a empty array' do
		board.board_array.should eq []
	end

######### THE SHIPS
#######################
	it '(ships) should contain 6 ships' do
		board.ships.count.should eq 6
	end

	it '(the aircraft_carrier) should occupy 5 spaces' do
		board.aircraft_carrier.count.should eq 5
	end

	it '(the cruiser) should occupy 3 spaces' do
		board.cruiser.count.should eq 3
	end

	it '(the submarine) should occupy 3 spaces' do
		board.submarine.count.should eq 3
	end

	it '(the patrol_boat) should occupy 2 spaces' do
		board.patrol_boat.count.should eq 2
	end

	it '(the battleship) should occupy 4 spaces' do
		board.battleship.count.should eq 4
	end

	it '(the destroyer) should occupy 3 spaces' do
		board.destroyer.count.should eq 3
	end

######### THE BOARD
#######################
	
	it 'should have ten rows' do
		board.rows
		board.board_array.count.should eq 10
	end

	it 'should have ten colums' do
		board.rows
		board.board_array[0].count.should eq 10
	end
end