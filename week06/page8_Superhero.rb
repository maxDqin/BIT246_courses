class Superhero
  def initialize(name)
    secret_identity(name)
  end

  def display_identity
    puts "\n\nThis superhero's secret " +
             "identity is " + @identity + "\n\n"
    print "Press Enter to continue."
  end

  private
  def secret_identity(name)
    if name =~ /Superman/i then
      @identity = "Clark Kent"
    elsif name =~ /Batman/i then
      @identity = "Bruce Wayne"
    elsif name =~ /Spiderman/i then
      @identity = "Peter Parker"
    else
      @identity = "Unknown"
    end
  end

end


loop do

  puts ("\n" * 25)
  puts "\n\nWelcome to the " +
           "Superhero Identity Tracker!\n\n"
  print "Enter a superhero's name " +
            "or type Q to quit: "

  input = STDIN.gets
  input.chop!

  break if input =~ /q/i

  puts ("\n" * 25)

  myHero = Superhero.new(input)
  myHero.display_identity
  # myHero.secret_identity(input)
  STDIN.gets

end
