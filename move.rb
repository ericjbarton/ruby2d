require "ruby2d"

set width: 1920, height: 1080, title: "Where am I going with this", background: "navy", resizable: "true", borderless: "true"

# get :width

Text.new(
  "WASD to move",
  x: 500, y: 100,
  # font: "vera.ttf",
  size: 20,
  color: "red",
  # rotate: 90,
  z: 10,
)

@character = Circle.new(x: 850, y: 540, size: 50, color: "red")

# @character.color = "red"

@x_speed = 0
@y_speed = 0

on :key_held do |event|
  if event.key == "a"
    @x_speed = @x_speed - 1
    @y_speed = 0
  elsif event.key == "d"
    @x_speed = @x_speed + 1
    @y_speed = 0
  elsif event.key == "w"
    @x_speed = 0
    @y_speed = @y_speed - 1
  elsif event.key == "s"
    @x_speed = 0
    @y_speed = @y_speed + 1
  end
end
on :key_up do |event|
  if event.key == "a"
    @x_speed = 0
    @y_speed = 0
  elsif event.key == "d"
    @x_speed = 0
    @y_speed = 0
  elsif event.key == "w"
    @x_speed = 0
    @y_speed = 0
  elsif event.key == "s"
    @x_speed = 0
    @y_speed = 0
  end
end

class Snow
  def initialize
    @snow_x = rand(Window.width)
    @snow_y = rand(Window.height)
    @x_velocity = (-5..5).to_a.sample
    @y_velocity = (5..7).to_a.sample
    @color = Color.new("white")
  end

  def draw
    Square.new(x: @snow_x, y: @snow_y, size: 5, color: @color, z: 1)
  end

  def move
    @snow_x = (@snow_x + @x_velocity) % (Window.width - 100)
    @snow_y = (@snow_y + @y_velocity) % (Window.height - 100)
  end
end

$snowstorm = Array.new(100) { Snow.new }

update do
  Rectangle.new(x: 800, y: 0, width: 100, height: 1080, color: "brown", z: -1)
  @character.x += @x_speed
  @character.y += @y_speed
  $snowstorm.each do |snow|
    snow.draw
    snow.move
  end
end
# tick = 0
# t = Time.now

# update do
#   if tick % 60 == 0
#     s.remove

#     set background: "random"
#   end
#   tick += 1
# end

show
