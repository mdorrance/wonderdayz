class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.integer :activity_id
      t.integer :family_crest_id
      t.integer :cost_id
      t.integer :location_id
      t.integer :family_id
      t.integer :review_id
      t.text :tips

      t.timestamps
    end
  end
end
