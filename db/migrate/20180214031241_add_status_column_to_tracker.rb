class AddStatusColumnToTracker < ActiveRecord::Migration[5.1]
  def change
    add_column :trackers, :status, :string
  end
end
