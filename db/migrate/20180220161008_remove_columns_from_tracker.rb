class RemoveColumnsFromTracker < ActiveRecord::Migration[5.1]
  def change
    remove_column :trackers, :name, :string
    remove_column :trackers, :street, :string
    remove_column :trackers, :zip, :string
  end
end
