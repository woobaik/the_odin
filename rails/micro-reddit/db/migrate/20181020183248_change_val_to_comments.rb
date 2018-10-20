class ChangeValToComments < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :user_id, :integer, null:false
    change_column :comments, :post_id, :integer, nill:false
  end
end
