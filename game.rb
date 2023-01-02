require "ruby2d"

set width: 1920, height: 1080, title: "Where am I going with this", background: "green", resizable: "true", borderless: "true"

get :width

Text.new(
  "WASD to move",
  x: 500, y: 100,
  # font: "vera.ttf",
  size: 20,
  color: "red",
  # rotate: 90,
  z: 10,
)
@tr = Triangle.new(
  x1: 520, y1: 50,
  x2: 740, y2: 430,
  x3: 300, y3: 430,
)
@s = Square.new

t2 = Triangle.new(
  x1: 420, y1: 150,
  x2: 640, y2: 530,
  x3: 200, y3: 530,
)

@s.color = ["blue", "green", "red", "yellow"]
@tr.color = ["red", "green", "blue"]
t2.color = ["blue", "red", "green"]

@x_speed = 0
@y_speed = 0

on :key_held do |event|
  if event.key == "a"
    @x_speed = @x_speed - 0.5
    @y_speed = 0
  elsif event.key == "d"
    @x_speed = @x_speed + 0.5
    @y_speed = 0
  elsif event.key == "w"
    @x_speed = 0
    @y_speed = @y_speed - 0.5
  elsif event.key == "s"
    @x_speed = 0
    @y_speed = @y_speed + 0.5
  end
end

update do
  @s.x += @x_speed
  @s.y += @y_speed
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
