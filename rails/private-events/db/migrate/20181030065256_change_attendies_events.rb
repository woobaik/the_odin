class ChangeAttendiesEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendies_events, :event_id, :attended_event_id
  end
end
