class ChangePostIdToComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :post_id, :integer, null:false
  end
end
