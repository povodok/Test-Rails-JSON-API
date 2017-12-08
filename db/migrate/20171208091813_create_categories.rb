class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name,          null: false
      t.string :category_slug, null: false

      t.timestamps
    end
    add_index :categories, :name
    add_index :categories, :category_slug, unique: true
  end
end
