class Superman
  def initialize
    if defined?(@@myHero) then
      puts "Error: Only one instance of Superman is permitted at a time."
    else
      @@myHero = "Is alive"
      puts "Up, up and away!"
    end
  end
end

class Superman
  def test
    puts self.hi + 'hhhh'
  end
end
clarkKent = Superman.new
louisLane = Superman.new
