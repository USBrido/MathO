class Player
  attr_accessor :name, :score, :turn

  def initialize(name)
  self.name = name
  self.score = 3
  self.turn = false
  end

  def myscore
    if self.score > 1
    self.score -= 1
    else
    self.score = 0
    end
  end

end

