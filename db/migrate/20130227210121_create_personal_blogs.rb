class CreatePersonalBlogs < ActiveRecord::Migration
  def change
    create_table :personal_blogs do |t|
      t.integer :person_id
      t.text :blog

      t.timestamps
    end
  end
end
