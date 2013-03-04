class AddColumnToFamily < ActiveRecord::Migration
  def change
    add_column :families, :activity_id, :integer
  end
end
