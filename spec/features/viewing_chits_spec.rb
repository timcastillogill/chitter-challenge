feature 'When viewing Chits' do
  
  feature 'a visitor goes to the landing page' do
    scenario 'and sees the title' do
      visit ('/')
      expect(page).to have_content "Welcome to Chitter"
    end

    scenario 'and a visitor can see a list of chits' do
      connection = PG.connect(dbname: 'chitter_manager_test')

      connection.exec("INSERT INTO chitters VALUES (DEFAULT, 1, 'Grim weather today', DEFAULT);")
      connection.exec("INSERT INTO chitters VALUES (DEFAULT, 1, 'Made a strogonoff was delicious', DEFAULT);")
      connection.exec("INSERT INTO chitters VALUES (DEFAULT, 1, 'Had to leave the house from cabin fever', DEFAULT);")
      
      visit ('/chits')
      
      expect(page).to have_content "Grim weather today"
      expect(page).to have_content "Made a strogonoff was delicious"
      expect(page).to have_content "Had to leave the house from cabin fever"
    end

  end
end