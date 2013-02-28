class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :trail_name
      t.string :age
      t.integer :gender_id
      t.integer :role_id
      t.integer :sash_id
      t.integer :person_avatar_id
      t.integer :family_id

      t.timestamps
    end
  end
end
