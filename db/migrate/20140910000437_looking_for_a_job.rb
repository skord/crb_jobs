class LookingForAJob < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :about_me
      t.string :experience_level
      t.string :github_name
      t.string :twitter_name
      t.text :looking_for
      t.boolean :receive_updates, default: true
    end

    add_index :candidates, :receive_updates
  end
end
