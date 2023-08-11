class Car
  @make
  @@wheels = 4

  def initialize(make)
    @make = make
  end

  def self.wheels
    @@wheels
  end
  attr_accessor :make
end

#outside the class
civic = Car.new("Honda")

#instance variable, called on the object
puts civic.make

#class variable, called on the class itself
puts Car.wheels

c2 = Car.new("car2")
puts c2.make
puts c2.wheels
