class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :deck
      t.belongs_to :user
      t.boolean :complete?, default: false
      t.integer :curr_card_index, default: 0
      t.timestamps
    end
  end
end
