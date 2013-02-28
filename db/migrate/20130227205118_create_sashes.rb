class CreateSashes < ActiveRecord::Migration
  def change
    create_table :sashes do |t|
      t.integer :award_id
      t.integer :person_id

      t.timestamps
    end
  end
end
