class ChangeComment < ActiveRecord::Migration[7.1]
  def change
    remove_index :comments, :article_id
    rename_column(:comment, :article_id, :shop_id)
    add_index :comments, :shop_id
  end
end
