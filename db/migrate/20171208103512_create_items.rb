class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name,         null: false
      t.decimal :price,       null: false
      t.text :description,    null: false
      t.integer :category_id, null: false
      t.string :slug,    null: false

      t.timestamps
    end
    add_index :items, :category_id
  end
end
