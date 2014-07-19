class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
<<<<<<< HEAD
=======
      t.integer :curr_card_index, default: 0
      t.timestamps
>>>>>>> 3e80d90683da02b5c9c91f38c7d473dabba9b624
    end
  end
end
