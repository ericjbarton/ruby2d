require "ruby2d"

set width: 1920, height: 1080, title: "Where am I going with this", background: "navy", resizable: "true", borderless: "true"

@character = Circle.new(x: 850, y: 540, size: 50, color: "blue")

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
  clear
  @character.x += @x_speed
  @character.y += @y_speed
end

show
