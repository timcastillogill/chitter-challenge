require 'pg'

class Chit

  def self.all
    connection = PG.connect(dbname: 'chitter_manager')
    result = connection.exec("SELECT * FROM chitters;")
    result.map { |chit| chit['message'] }
  end
end