class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :name
      t.integer :category_id
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
