class Noise
  def initialize(occurrences)
    @occurrences = occurrences
  end
  def acc
    return @occurrences
  end
end
t= Noise.new(1)
puts t.acc


class Noise
  attr_accessor :occurrences
  def initialize(occurrences)
    @occurrences = occurrences
  end
end
t= Noise.new(1)

# increase the noise level
t.occurrences +=1
puts t.occurrences
