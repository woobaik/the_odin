class ChangeDescriptionToEventDescriptionToEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :description, :event_description
  end
end
