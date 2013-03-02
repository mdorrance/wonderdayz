class AddImageUrlToAvatar < ActiveRecord::Migration
  def change
    add_column :avatars, :image_url, :string
  end
end
