class Girl

  def initialize(name, size)
    @name = name
    @size = size
  end

  def name
    @name
  end

  def size
    @size
  end

  def size=(size)
    @size = size
  end
end


haram = Girl.new("haram", "good")
p haram.name
haram.size = "very good"
p haram.size
# in order to access instance variable, we should make a
#getter or setter methods. (attr_accessor)
