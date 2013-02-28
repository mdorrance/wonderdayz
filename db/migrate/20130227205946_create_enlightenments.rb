class CreateEnlightenments < ActiveRecord::Migration
  def change
    create_table :enlightenments do |t|
      t.integer :adventure_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
