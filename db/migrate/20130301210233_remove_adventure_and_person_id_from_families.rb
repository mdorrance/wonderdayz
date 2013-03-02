class RemoveAdventureAndPersonIdFromFamilies < ActiveRecord::Migration
  def up
    remove_column :families, :person_id
    remove_column :families, :adventure_id
  end

  def down
  end
end
