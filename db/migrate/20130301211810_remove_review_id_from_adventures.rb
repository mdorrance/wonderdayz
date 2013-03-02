class RemoveReviewIdFromAdventures < ActiveRecord::Migration
  def up
    remove_column :adventures, :review_id
  end

  def down
  end
end
