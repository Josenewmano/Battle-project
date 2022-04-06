require_relative '../lib/player'

describe Player do
  subject(:fred) { Player.new('Fred')}
  subject(:george) { Player.new('George')}

  it 'returns the correct name' do
    expect(fred.name).to eq 'Fred'
  end

  it 'returns the correct hit points' do
    expect(fred.hp).to eq Player::DEFAULT_HP
  end

  it 'is damaged by attack' do
    expect { fred.attack(george) }.to change { george.hp }.by(-10)
  end
end
