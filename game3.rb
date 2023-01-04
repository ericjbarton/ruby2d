require "ruby2d"

set background: "navy"
set width: 1920
set height: 1080

class Snow
  def initialize
    @x = rand(Window.width)
    @y = rand(Window.height)
    @x_velocity = (-5..5).to_a.sample
    @y_velocity = (5..7).to_a.sample
    @color = Color.new("white")
  end

  def draw
    Square.new(x: @x, y: @y, size: 5, color: @color, z: 1)
  end

  def move
    @x = (@x + @x_velocity) % (Window.width - 100)
    @y = (@y + @y_velocity) % (Window.height - 100)
  end
end

$snowstorm = Array.new(500) { Snow.new }

update do
  clear
  Rectangle.new(x: 800, y: 0, width: 100, height: 1080, color: "brown", z: 0)
  Circle.new(x: 850, y: 540, size: 50, color: "blue")
  $snowstorm.each do |snow|
    snow.draw
    snow.move
  end
end

show
