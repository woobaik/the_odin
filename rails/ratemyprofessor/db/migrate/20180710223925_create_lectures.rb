class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :lecture_name
      t.string :semester
      t.integer :credits

      t.timestamps
    end
  end
end
