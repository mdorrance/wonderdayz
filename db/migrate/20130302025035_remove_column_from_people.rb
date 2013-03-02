class RemoveColumnFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :password
  end

  def down
    add_column :people, :password, :string
  end
end
