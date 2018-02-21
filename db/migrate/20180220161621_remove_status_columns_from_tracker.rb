class RemoveStatusColumnsFromTracker < ActiveRecord::Migration[5.1]
  def change
    remove_column :trackers, :status, :string
    remove_column :trackers, :service_type, :string
  end
end
