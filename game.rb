require_relative './player'
require_relative './turn'

class Game

  def initialize
    @player1 = Player.new("Alisa")
    @player2 = Player.new("Lera")
    @players = [@player1, @player2]
    @turn = Turn.new(@players)
  end

  def play

    while(!game_over?)

      @turn.new_turn
      current_player = @turn.current_player
      enemy_player = @turn.enemy_player
      number1 = rand(20)
      number2 = rand(20)
      puts "#{current_player.name} What does #{number1} plus #{number2} equal?"
      answer = gets.chomp.to_i
      if answer == number1 + number2
        current_player.correct
      else
      current_player.incorrect
      end
      game_status
      sleep 0.7
    end

    end_game
  end

  def game_status
    puts "#{@player1.status} VS #{@player2.status}"
  end

  def game_over?
    @players.any?{|player| player.loser?}
  end

  def end_game
    winner = @players.select{|player| player.winner?}.first
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
  end

end

