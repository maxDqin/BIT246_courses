class Hero
  attr_accessor :power, :weakness
  def catch_phrase
    print "Halt in the name of the law! "
  end
end

class UnderDog < Hero
  def bark
    puts "Woof!"
  end
end

class Superman < Hero
  attr_accessor :cape
end

class Batman < Hero
  attr_accessor :mask
end

UD = UnderDog.new
SM = Superman.new
BM = Batman.new

SM.power = "Flight"
SM.weakness = "Kryptonite"

SM.cape = "red"
SM.catch_phrase

puts "Or I will fly over there in my " + SM.cape + " cape and capture you!"
