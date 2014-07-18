require 'csv'

CSV.foreach('capitals.csv', :headers => true) do |row|
  Card.create(row)
end
