class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :email
<<<<<<< HEAD
=======
      t.timestamps
>>>>>>> 3e80d90683da02b5c9c91f38c7d473dabba9b624
    end
  end
end
