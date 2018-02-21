class RenameCityColumnInTracker < ActiveRecord::Migration[5.1]
  def change
    rename_column :trackers, :city, :return_city
    rename_column :trackers, :state, :return_state
  end
end
