class CreateFamilyCrests < ActiveRecord::Migration
  def change
    create_table :family_crests do |t|
      t.integer :crest_id
      t.integer :family_id

      t.timestamps
    end
  end
end
