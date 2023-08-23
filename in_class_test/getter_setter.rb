# https://www.geeksforgeeks.org/ruby-getters-and-setters-method/

class SName


  #get method
  def name
    @name
  end

  #set method
  def name=(name)
    # https://stackoverflow.com/questions/5398919/what-does-the-equal-symbol-do-when-put-after-the-method-name-in-a-method-d
    @name=name
  end


end

a = SName.new
puts a.name="d"
puts a.name