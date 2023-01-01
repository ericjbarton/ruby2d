require "ruby2d"

set width: 800, height: 600, title: "Where am I going with this", background: "navy", resizable: "true"

get :width

@tr = Triangle.new(
  x1: 320, y1: 50,
  x2: 540, y2: 430,
  x3: 100, y3: 430,
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

on :key_down do |event|
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
  else event.key ==
       @x_speed = 0
    @y_speed = 0   end
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
