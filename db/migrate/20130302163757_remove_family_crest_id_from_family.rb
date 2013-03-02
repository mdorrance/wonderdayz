class RemoveFamilyCrestIdFromFamily < ActiveRecord::Migration
  def up
    remove_column :families, :family_crest_id
  end

  def down
  end
end
