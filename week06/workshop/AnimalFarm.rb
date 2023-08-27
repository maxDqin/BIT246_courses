class Animal
  attr_accessor :name
  attr_accessor :type

  def talk
    puts 'Grrrrr!!!'
  end

  def identify
    puts "name is: " + name.to_s
    puts "type is: " + type.to_s
  end
end

largeAnimal = Animal.new
smallAnimal = Animal.new

largeAnimal.name ='Leo'
largeAnimal.type = 'Lion'
smallAnimal.name = 'Marvin'
smallAnimal.name = 'Mouse'

largeAnimal.talk
largeAnimal.identify

smallAnimal.talk
smallAnimal.identify