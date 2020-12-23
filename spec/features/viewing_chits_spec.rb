feature 'Viewing Chits' do
  feature 'visiting the landing page' do
    scenario 'visiting the landing page' do
      visit ('/')
      expect(page).to have_content "Welcome to Chitter"
    end
  end
end