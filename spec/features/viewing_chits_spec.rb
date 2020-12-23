feature 'When viewing Chits' do
  
  feature 'a visitor goes to the landing page' do
    scenario 'and sees the title' do
      visit ('/')
      expect(page).to have_content "Welcome to Chitter"
    end

    scenario 'and a visitor can see a list of chits' do
      visit ('/chits')
      
      expect(page).to have_content "Grim weather today"
      expect(page).to have_content "Made a strogonoff, was delicious"
      expect(page).to have_content "Had to leave the house, cabin fever"
    end

  end
end