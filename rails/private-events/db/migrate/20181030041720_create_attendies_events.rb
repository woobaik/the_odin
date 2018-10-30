class CreateAttendiesEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :attendies_events do |t|
      t.references :attendee, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
