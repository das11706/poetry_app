class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :owner_name   
      
      t.timestamps
    end
  end
end
