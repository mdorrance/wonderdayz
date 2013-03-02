class AddColumnToPeople < ActiveRecord::Migration
  def change
    add_column :people, :email, :string
    add_column :people, :password, :string
  end
end
