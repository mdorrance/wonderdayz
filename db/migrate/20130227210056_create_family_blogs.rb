class CreateFamilyBlogs < ActiveRecord::Migration
  def change
    create_table :family_blogs do |t|
      t.integer :family_id
      t.text :blog

      t.timestamps
    end
  end
end
