class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :tribe_name
      t.integer :family_crest_id
      t.integer :adventure_id
      t.integer :person_id

      t.timestamps
    end
  end
end
