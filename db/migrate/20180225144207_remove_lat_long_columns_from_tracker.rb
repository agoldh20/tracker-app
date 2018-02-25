class RemoveLatLongColumnsFromTracker < ActiveRecord::Migration[5.1]
  def change
    remove_column :trackers, :latitude, :float
    remove_column :trackers, :longitude, :float
  end
end
