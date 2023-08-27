class Animal
  attr_accessor :name
  attr_accessor :type

  def talk
    puts "Grrrrr!!!"
  end

  def identify
    puts "name is: " + name.to_s
    puts "type is: " + type.to_s
  end
end

class Lion < Animal
  def talk
    puts "Roar!!!"
  end
end

class Mouse < Animal
  def talk
    puts "Eeek!!!"
  end
end
largeAnimal = Lion.new
smallAnimal = Mouse.new

largeAnimal.name ='Leo'
largeAnimal.type = 'Lion'
smallAnimal.name = 'Marvin'
smallAnimal.type = 'Mouse'

largeAnimal.talk
largeAnimal.identify

smallAnimal.talk
smallAnimal.identify

humanAnimal = Animal.new
humanAnimal.name = "Jerry"
humanAnimal.type = 'homosapien'
humanAnimal.talk
humanAnimal.identify
