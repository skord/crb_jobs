class AddMarkdown < ActiveRecord::Migration
  def change
    add_column :jobs, :description_markdown, :text
    add_column :companies, :description_markdown, :text
  end
end
