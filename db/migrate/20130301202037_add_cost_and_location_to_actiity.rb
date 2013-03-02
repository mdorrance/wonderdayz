class AddCostAndLocationToActiity < ActiveRecord::Migration
  def change
    add_column :activities, :cost, :integer
    add_column :activities, :location_name, :string
    add_column :activities, :address, :string
    add_column :activities, :city, :string
    add_column :activities, :state, :string
    add_column :activities, :zipcode, :string

  end
end
