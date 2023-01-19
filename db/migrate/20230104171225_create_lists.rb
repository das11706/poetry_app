class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :owner_name   
      t.integer :author_id
      t.integer :poem_id
      t.timestamps
    end
  end
end
