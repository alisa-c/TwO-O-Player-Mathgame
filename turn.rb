class Turn
  attr_reader :current_player, :enemy_player

  def initialize(players)
    @players = players.shuffle
    @current_player = nil
    @enemy_player = nil
  end

  def get_current_player
    @players.first
  end

  def new_turn
    puts ""
    puts "----- NEW TURN ------"
    @current_player = get_current_player
    @enemy_player = get_enemy_player(@current_player)
    @players.rotate!
  end

  def get_enemy_player(current)
    @players.select{|player| player != current}.sample
  end
end