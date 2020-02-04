require "./players.rb"
require "./game.rb"

# player logic goes in here


puts "Game starts now!"
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
myGame = Game.new(player1, player2)
