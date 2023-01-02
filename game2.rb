require "ruby2d"

set background: "navy"
set width: 1920
set height: 1080

class Box
  def initialize
    @x = rand(Window.width)
    @y = rand(Window.height)
    @x_velocity = (-5..5).to_a.sample
    @y_velocity = (5..7).to_a.sample
    @color = Color.new("white")
  end

  def draw
    Square.new(x: @x, y: @y, size: 5, color: @color)
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
    Circle.new(x: @x, y: @y, size: 50, color: "blue")
  end

  def move
    
end

$boxes = Array.new(500) { Box.new }
character = Character.new
update do
  clear
  character.draw
  # character.move

  $boxes.each do |box|
    box.draw
    box.move
  end
end

show
