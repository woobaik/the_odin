class ChangeCommentsContent < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :content, :text, null:false
  end
end
