class FixAdventures < ActiveRecord::Migration
  def up
    add_column :adventures, :person_id, :integer
  end

  def down
    remove_column :adventures, :person_id
  end
end
