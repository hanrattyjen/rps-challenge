require 'game'

describe Game do

  subject(:game)  { described_class.new(player, computer) }
  let(:player)  { double(:player, name: "Player", choice: "Rock") }
  let(:computer)  { double(:computer, name: "Computer", choice: "Scissors") }

  it 'should accept two players' do
    expect(game.player).to eq player
  end

  it 'should accept player 2 as a computer' do
    expect(game.computer).to eq computer
  end

  it 'displays the choices available' do
    expect(Game.choices).to eq ["Rock", "Paper", "Scissors"]
  end

  describe '#result' do
    it 'displays the result' do
      expect(game.result).to eq "Computer chose Scissors. Player beats Computer"
    end
  end

  describe '#result' do
    let(:player)  { double(:player,name: "Player", choice: "Rock") }
    let(:computer)  { double(:computer,name:"Computer", choice: "Scissors") }
    it 'displays the result when Rock v Scissors' do
      expect(game.result).to eq "Computer chose Scissors. Player beats Computer"
    end
  end

  describe '#result' do
    let(:player)  { double(:player,name: "Player", choice: "Paper") }
    let(:computer)  { double(:computer,name:"Computer", choice: "Rock") }
    it 'displays the result when Paper v Rock' do
      expect(game.result).to eq "Computer chose Rock. Player beats Computer"
    end
  end

  describe '#result' do
    let(:player)  { double(:player,name: "Player", choice: "Scissors") }
    let(:computer)  { double(:computer,name:"Computer", choice: "Paper") }
    it 'displays the result when Scissors v Paper' do
      expect(game.result).to eq "Computer chose Paper. Player beats Computer"
    end
  end

  describe '#result' do
    let(:player)  { double(:player,name: "Player", choice: "Scissors") }
    let(:computer)  { double(:computer,name:"Computer", choice: "Scissors") }
    it 'displays the result when Scissors v Scissors' do
      expect(game.result).to eq "Draw"
    end
  end

end
