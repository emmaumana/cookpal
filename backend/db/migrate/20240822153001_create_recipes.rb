class CreateRecipes < ActiveRecord::Migration[7.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.string :description
      t.integer :pre_time_minutes, default: 0
      t.integer :cook_time_minutes, default: 0
      t.float :rating, default: 0
      t.string :author
      t.string :image_url

      t.timestamps
    end

    add_index :recipes, :slug, unique: true
  end
end
