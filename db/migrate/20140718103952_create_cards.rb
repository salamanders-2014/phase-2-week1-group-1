class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.belongs_to :deck
      t.boolean :correct?
<<<<<<< HEAD
=======
      t.timestamps
>>>>>>> 3e80d90683da02b5c9c91f38c7d473dabba9b624
    end
  end


end
