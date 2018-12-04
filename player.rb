class Player

  attr_accessor :name, :lives

  def initialize (name)
    @name = name
    @lives = 3
  end

  def name
    @name
  end

  def status
    "#{name}: #{@lives}"
  end

  def correct
    puts "Player 1: YES! You are correct."
  end

  def incorrect
    @lives -= 1
    puts "Player 1: Seriously? No!"
  end

  def winner?
    @lives > 0
  end

  def loser?
    @lives <= 0
  end

end
