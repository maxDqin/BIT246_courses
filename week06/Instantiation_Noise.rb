class Noise
  def initialize(number_beeps)
    @occurrences = number_beeps
  end
  def make_sound
    @occurrences.times{print "\a"}
  end
end

shortSound = Noise.new(11)
longSound = Noise.new(0)

shortSound.make_sound
STDIN.gets
longSound.make_sound
