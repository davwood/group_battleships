require_relative '../lib/player.rb'

describe Player do

	let(:player) {Player.new("Dave")}

	# let(:board) {double :board [['s', 's', '', 's', '', '', 's', 's', 's', 's']]}
	
	it 'should initialize with a new player named Dave' do
		
		expect(player.name).to eq("Dave")
	end

	it 'will look the player\'s board and return true if ships are floating' do
		board = double([['s', 's', '', 's', '', '', 's', 's', 's', 's']])
		expect(:board.each {|x| x == "s"}).to be_true
		dave.has_ships_still_floating?
	end

	it 'will shoot at the opponents board' do
		board = double :board

	end




end

