class AddAdventureIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :adventure_id, :integer
  end
end
