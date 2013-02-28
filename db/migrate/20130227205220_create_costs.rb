class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
