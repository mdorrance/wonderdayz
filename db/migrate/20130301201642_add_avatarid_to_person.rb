class AddAvataridToPerson < ActiveRecord::Migration
  def change
    add_column :people, :avatar_id, :integer
  end
end
