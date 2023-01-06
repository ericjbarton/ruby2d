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

update do
  @character.x += @x_speed
  @character.y += @y_speed
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
