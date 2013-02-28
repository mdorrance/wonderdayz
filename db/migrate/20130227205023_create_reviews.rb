class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :good
      t.text :bad
      t.integer :person_id

      t.timestamps
    end
  end
end
