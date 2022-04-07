require_relative 'player'

class Game
  attr_reader :players, :index, :index_defence
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @index = 0
    @index_defence = 1
  end

  def switch_players
    player = @players.first
    @players.shift
    @players.push(player)
  end

  def attack(player)
    player.receive_damage
  end
end