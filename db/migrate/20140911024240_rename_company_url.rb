class RenameCompanyUrl < ActiveRecord::Migration
  def change
    rename_column :jobs, :company_url, :url
  end
end
