class AddFamilyToPeople < ActiveRecord::Migration
  def change
    add_column :people, :family_name, :string
  end
end
