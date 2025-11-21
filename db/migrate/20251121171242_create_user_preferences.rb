class CreateUserPreferences < ActiveRecord::Migration[7.2]
  def change
    create_table :user_preferences do |t|
      t.string :dietary_restrictions
      t.string :cuisine_preferences
      t.references :organization, null: false, foreign_key: true
      t.references :pref_user, null: false, foreign_key: { to_table: :users }, index: { unique: true }

      t.timestamps
    end
  end
end
