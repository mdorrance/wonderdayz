class CreateCrests < ActiveRecord::Migration
  def change
    create_table :crests do |t|
      t.string :name

      t.timestamps
    end
  end
end
