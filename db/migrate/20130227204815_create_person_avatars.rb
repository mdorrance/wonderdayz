class CreatePersonAvatars < ActiveRecord::Migration
  def change
    create_table :person_avatars do |t|
      t.integer :avatar_id
      t.integer :person_id

      t.timestamps
    end
  end
end
