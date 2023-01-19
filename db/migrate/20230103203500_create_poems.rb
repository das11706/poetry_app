class CreatePoems < ActiveRecord::Migration[7.0]
  def change
    create_table :poems do |t|
      t.string :author_name
      t.string :title
      t.string :lines
      t.timestamps
    end
  end
end
