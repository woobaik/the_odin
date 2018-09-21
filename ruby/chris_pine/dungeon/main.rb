class Dungeon
  attr_accessor :player
  def initialize(player)
    @player = player
    @room = {}
  end

  def room_count
    puts "Current Room count : #{Room.room_count}"
    Room.room_count
  end


  def add_room(reference, name, description, connections)
    @room[reference] = Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @room[reference]
  end
end

class Player
  attr_accessor :name, :location

  def initialize(player_name)
    @name = player_name
  end
end

class Room
  attr_accessor :reference, :name, :description, :connections
    @@room_count = 0
  def initialize(reference, name, description, connections)
    @reference = reference
    @name = name
    @description = description
    @connections = connections
    @@room_count += 1
  end

  def self.room_count
    @@room_count
  end
end

me = Player.new("Haram Kim")
my_dungeon = Dungeon.new(me)
puts my_dungeon.player.name

my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave.", {
                    :west => :smallcave
  })
puts my_dungeon.room_count

my_dungeon.add_room(:smallcave, "Small Cave", "a small cavernous cave.", {
  :west => :largecave
  })

puts my_dungeon.room_count
