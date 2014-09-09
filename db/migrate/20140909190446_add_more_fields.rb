class AddMoreFields < ActiveRecord::Migration
  def change
    change_table :jobs do |t|
      t.string :position_type
      t.string :location
      t.boolean :remote_potential
    end
  end
end
