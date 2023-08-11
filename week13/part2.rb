# page 11
class String
  def NullOrEmpty?
    # return true if (self == nil || self == "")
    (self == nil || self == "")
  end
end

puts "".NullOrEmpty?
puts "test".NullOrEmpty?

