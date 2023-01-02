require "ruby2d"

set background: "navy"
set width: 1920
set height: 1080

class Box
  def initialize
    @x = rand(Window.width)
    @y = rand(Window.height)
    @x_velocity = (-5..5).to_a.sample
    @y_velocity = (-5..5).to_a.sample
    @color = Color.new("random")
  end

  def draw
    Square.new(x: @x, y: @y, size: 15, color: @color)
  end

  def move
    @x = (@x + @x_velocity) % (Window.width - 100)
    @y = (@y + @y_velocity) % (Window.height - 100)
  end
end

class Character
  def initialize
    @x = 960
    @y = 540
  end

  def draw
    Circle.new(x: @x, y: @y, size: 100, color: "white")
  end
end

$boxes = Array.new(40) { Box.new }
character = Character.new
update do
  clear
  character.draw
  $boxes.each do |box|
    box.draw
    box.move
  end
end

show
