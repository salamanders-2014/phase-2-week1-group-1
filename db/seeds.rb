require 'csv'
def create_states_deck(filename)
  deck = Deck.create(title: "States Capitol")
  CSV.foreach(filename, {:headers => true, :header_converters => :symbol}) do |row|
    deck.cards << Card.create(row.to_hash)
  end
end

create_states_deck("db/capitals.csv")




