class Animal
  attr_accessor :name
  attr_accessor :type

  def talk
    puts "Grrrrr!!!"
  end

  def identify
    puts "Name is: " + name.to_s
    puts "Type is: " + type.to_s
  end
end

largeAnimal = Animal.new
smallAnimal = Animal.new

largeAnimal.name ="Leo"
largeAnimal.type ="Lion"

smallAnimal.name ="Marvin"
smallAnimal.type ="Mouse"

largeAnimal.talk
largeAnimal.identify

smallAnimal.talk
smallAnimal.identify
