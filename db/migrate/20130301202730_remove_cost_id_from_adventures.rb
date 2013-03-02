class RemoveCostIdFromAdventures < ActiveRecord::Migration
  def up
    remove_column :adventures, :cost_id
    remove_column :adventures, :location_id
  end

  def down
  end
end
