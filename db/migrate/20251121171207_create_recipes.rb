class CreateRecipes < ActiveRecord::Migration[7.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :instructions
      t.integer :prep_time_minutes
      t.integer :cook_time_minutes
      t.string :cuisine_type
      t.string :dietary_restrictions
      t.references :organization, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
