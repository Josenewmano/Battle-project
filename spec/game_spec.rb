require_relative '../lib/game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'does not throw an error when initialised with two players' do
    game = Game.new(player_1, player_2)
    expect(game.player_1).to eq(player_1)
  end
  
  it 'causes damage to the player when the attack method is called' do
    game = Game.new(player_1, player_2)
    expect(game.player_1).to receive(:receive_damage)
    game.attack(player_1)
  end
end