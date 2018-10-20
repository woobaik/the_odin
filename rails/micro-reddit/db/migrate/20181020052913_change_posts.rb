class ChangePosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :title, :string, null:false
    change_column :posts, :content, :string, null:false
  end
end
