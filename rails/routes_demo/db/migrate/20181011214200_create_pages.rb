class CreatePages < ActiveRecord::Migration[5.2]
  def up
    create_table :pages do |t|
      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible, defalut: false
      t.references :subject, foreign_key: true

      t.timestamps
    end
    add_index("pages", "permalink")
  end

  def down
    drop_table :pages
  end
end
