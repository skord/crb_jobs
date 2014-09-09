class ReworkCompanies < ActiveRecord::Migration
  def change
    drop_table :companies
    remove_column :jobs, :company_id
    add_column :jobs, :company_name, :string
    add_column :jobs, :company_url, :string
  end
end
