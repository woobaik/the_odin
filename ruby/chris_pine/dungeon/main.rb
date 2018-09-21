class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end


class Player
  attr_accessor :name, :location

  def initialize(player_name)
    @name = player_name
  end
end

class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections )
    @reference = reference
    @name = name
    @description = description
    @connections = connections
  end

end

player = Player.new("haram")
Dungeon.new(player)
