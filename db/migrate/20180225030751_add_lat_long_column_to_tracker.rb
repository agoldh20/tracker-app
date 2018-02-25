class AddLatLongColumnToTracker < ActiveRecord::Migration[5.1]
  def change
    add_column :trackers, :latitude, :float
    add_column :trackers, :longitude, :float
  end
end
