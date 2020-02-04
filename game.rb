class Game
  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    self.player1.turn = true
    self.run_game
  end

  def newTurn
    if player1.turn
      self.player1.turn = false
      self.player2.turn = true
      self.questions(self.player1)

    else 
      self.player1.turn = true
      self.player2.turn = false
      self.questions(self.player2)
    end
    puts "----- NEW TURN -----"
    run_game
  end

  def questions(player)
      firstnumber = rand(20).ceil+1 
      secondnumber = rand(20).ceil+1 
      final_result = firstnumber + secondnumber
      puts "#{player.name} What does #{firstnumber} plus #{secondnumber} equals to?" 
      input = gets.chomp
      answer = final_result
      if answer != input.to_i
        player.myscore
        puts "No! You are wrong!"
        print_score
          if player.score == 0
            puts "You lose! Game Over"
            exit(0)
          end
      else
        puts "Way to go!"
        print_score
      end

      newTurn
  end

  def print_score
    puts "P1 #{player1.score}/3 vs P2 #{player2.score}/3"
  end

  def run_game
    newTurn
  end
end