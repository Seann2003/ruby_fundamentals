class ChangeDataForShops < ActiveRecord::Migration[7.1]
  def change
    rename_column(:shops,:title,:itemName)
    rename_column(:shops,:body,:description)
    add_column :shops, :itemPrice, :integer
  end
end
