class PagesController < ApplicationController
  def home
    @airports = Airport.all
    @airport_list = Airport.all.map {|airport| [airport.name, airport.id]}
  end
end
