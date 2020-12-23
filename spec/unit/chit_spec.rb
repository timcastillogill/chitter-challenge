require 'chit'

describe Chit do
  describe '.all' do
    it 'returns all chits' do
      connection = PG.connect(dbname: 'chitter_manager_test')
      
      connection.exec("INSERT INTO chitters VALUES (DEFAULT, 1, 'Grim weather today', DEFAULT);")
      connection.exec("INSERT INTO chitters VALUES (DEFAULT, 1, 'Made a strogonoff was delicious', DEFAULT);")
      connection.exec("INSERT INTO chitters VALUES (DEFAULT, 1, 'Had to leave the house from cabin fever', DEFAULT);")

      chits = Chit.all

      expect(chits).to include("Grim weather today")
      expect(chits).to include("Made a strogonoff was delicious")
      expect(chits).to include("Had to leave the house from cabin fever")
    end
  end

end