class RemoveFamilyCrestFromAdventure < ActiveRecord::Migration
  def up
    remove_column :adventures, :family_crest_id
  end

  def down
  end
end
