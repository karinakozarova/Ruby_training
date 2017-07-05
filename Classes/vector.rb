class Vector
  def initialize(x, y)
    @x = x
    @y = y
  end

  def length
    (@x * @x + @y * @y)**0.5
  end
end

vector = Vector.new 2.0, 3.0
puts vector.length       # => 3.605551275463989
