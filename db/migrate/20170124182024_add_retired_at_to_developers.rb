class AddRetiredAtToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :retired_at, :datetime
  end
end
