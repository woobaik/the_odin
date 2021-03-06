class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key:'from_airport_id', class_name:'Airport'
  belongs_to :to_airport, foreign_key:'to_airport_id', class_name:'Airport'

  def event_date_formatted
    event_date.strftime("%m/%d/%y")
  end
end
