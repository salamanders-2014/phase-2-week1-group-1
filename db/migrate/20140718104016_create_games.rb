class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :deck
      t.belongs_to :user
      t.boolean :complete?
<<<<<<< HEAD
=======
      t.timestamps
>>>>>>> 3e80d90683da02b5c9c91f38c7d473dabba9b624
    end
  end
end
