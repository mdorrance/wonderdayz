class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name

      t.timestamps
    end
  end
end
