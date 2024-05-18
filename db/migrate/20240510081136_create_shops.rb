class CreateShops < ActiveRecord::Migration[7.1]
  def change
    create_table :shops do |t|
      t.string :itemName
      t.text :description
      t.integer :itemPrice

      t.timestamps
    end
  end
end
