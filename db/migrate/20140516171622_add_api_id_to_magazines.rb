class AddApiIdToMagazines < ActiveRecord::Migration
  def change
    add_column :magazines, :api_id, :integer
  end
end
