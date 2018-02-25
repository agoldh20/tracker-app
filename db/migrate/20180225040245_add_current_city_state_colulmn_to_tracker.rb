class AddCurrentCityStateColulmnToTracker < ActiveRecord::Migration[5.1]
  def change
    add_column :trackers, :current_city, :string
    add_column :trackers, :current_state, :string
  end
end
