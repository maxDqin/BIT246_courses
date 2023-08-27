class Automobile
  attr_accessor :color
  def drive
    puts "Vroom!!!"
  end
end

myCar = Automobile.new
myCar.color = 'Blue'

puts 'I love to drive my little ' + myCar.color + 'Car.'
myCar.drive
