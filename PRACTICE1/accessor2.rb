class Thing
  attr_reader :description
  attr_writer :description
  attr_writer :name

  def initialize(aName, aDescription)
    @name = aName
    @description = aDescription
  end

  def name
    return @name.capitalize
  end
end

class Treasure < Thing
  attr_accessor :value

  def initialize(aName, aDescription)
    super(aName, aDescription)
  end
end

t1 = Treasure.new("sword", "an Elvish weapon forged of gold")
  t1.value = 800
  t2 = Treasure.new("dragon horde", "a huge pile of jewels")  
  t2.value = 500
  puts "t1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
  t1.value= 100
  t1.description << " (now somewhat tarnished)" # note << appends specified string to existing string
  puts "t1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
  puts "This is treasure1: #{t1.inspect}"
  puts "This is treasure2: #{t2.inspect}"
  puts "value is #{t2.description}"