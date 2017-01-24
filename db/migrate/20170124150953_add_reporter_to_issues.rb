class AddReporterToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :reporter_id, :integer
  end
end
