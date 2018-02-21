class AddShippingtypeColumnToTracker < ActiveRecord::Migration[5.1]
  def change
    add_column :trackers, :service_type, :string
  end
end
