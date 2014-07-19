class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :deck
      t.belongs_to :user
      t.boolean :complete?
      t.timestamps
    end
  end
end
