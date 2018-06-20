class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, reference, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms[reference]
  end
end

class Room
  def full_description
    @name + "\n\nYou are in " + @description

  end
end

Player = Struct.new(:name, :location)
Room = Struck.new(:reference, :name, :description, :connections)

my_dungeon = Dungeon.new("me")
my_dungeon.add_room(:largecave, "Large Cave", "a large caernous cave", {west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {:east => :largecave})
