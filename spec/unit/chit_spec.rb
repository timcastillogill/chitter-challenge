require 'chit'

describe Chit do
  describe '.all' do
    it 'returns all chits' do
      chits = Chit.all

      expect(chits).to include("Grim weather today")
      expect(chits).to include("Made a strogonoff, was delicious")
      expect(chits).to include("Had to leave the house, cabin fever")
    end
  end

end