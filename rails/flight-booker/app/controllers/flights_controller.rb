class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map {|port| [port.name, port.id] }
    @passenger = (1..4)
  end
end
