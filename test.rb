require './lib/player.rb'

board = [['s', 's', '', 's', '', '', 's', 's', 's', 's']]

dave = Player.new("Dave")

puts dave.has_ships_still_floating?