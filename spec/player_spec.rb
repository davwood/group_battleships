require_relative '../lib/player.rb'

describe Player do

	let(:player) {Player.new("Dave")}

	# let(:board) {double :board [['s', 's', '', 's', '', '', 's', 's', 's', 's']]}
	
	it 'should initialize with a new player named Dave' do
		expect(player.name).to eq("Dave")
	end

	it 'will look the player\'s board and return true if ships are floating' do
		my_board = [['s', 's', '', 's', '', '', 's', 's', 's', 's']]
		@flat_board = my_board.flatten
		expect(@flat_board.include?('s')).to be_true
	end

	it 'will return false when there are are no ships floating' do
		my_board = [['x', 'x', '', 'x', '', '', 'x', 'x', 'x', 'x']]
		expect(player.has_ships_still_floating?(my_board)).to be_false
	end

	it 'will shoot at the opponents board' do
		opponent_board = double :opponent_board
		at_coordinates = "A1"
		opponent_board.should_receive(:register_shot).with(at_coordinates)
		player.shoots(at_coordinates, opponent_board)
	end


end

