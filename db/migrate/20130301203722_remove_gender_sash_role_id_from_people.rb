class RemoveGenderSashRoleIdFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :gender_id
    remove_column :people, :role_id
    remove_column :people, :sash_id
    remove_column :people, :person_avatar_id
  end

  def down
  end
end
