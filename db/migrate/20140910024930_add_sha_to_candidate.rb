class AddShaToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :token, :string
    add_index :candidates, :token

    Candidate.all.each do |c|
      c.send(:generate_token!)
      c.save
    end
  end
end
