class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.belongs_to :game
      t.boolean :correct?
      t.belongs_to :card
      t.timestamps
    end
  end
end
