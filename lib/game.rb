class Game
  def initialize
    @turn = 1
  end

  def attack(player)
    player.receive_damage
    switch_turn
  end

  attr_reader :turn

  private
  def switch_turn
    if @turn == 1
      @turn = 2
    elsif @turn == 2
      @turn = 1
    end
  end
end
