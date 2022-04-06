require_relative '../lib/game'

describe Game do
  let(:fred) { double :player }
  let(:george) { double :player }
  game = Game.new

  it 'causes damage to the player when the attack method is called' do
    expect(fred).to receive(:receive_damage)
    subject.attack(fred)
  end
end