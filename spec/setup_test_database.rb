require 'pg'

def setup_test_database
  p "Setting up test database...CHILL!"

  connection = PG.connect(dbname: 'chitter_manager_test')

  connection.exec("TRUNCATE chitters;")
end