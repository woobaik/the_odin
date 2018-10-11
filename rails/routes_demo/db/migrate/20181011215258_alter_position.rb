class AlterPosition < ActiveRecord::Migration[5.2]
  def change
    add_index :pages, :position
  end
end
