class AddBaseTables < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :company_id
      t.boolean :is_open
      t.string :experience_level
      t.string :email
      t.timestamps
    end

    create_table :companies do |t|
      t.string :name
      t.text :description
    end

    add_index :jobs, :company_id
    add_index :jobs, :is_open
    add_index :jobs, [:company_id, :is_open]
  end
end
