require "ruby2d"

set width: 800, height: 600, title: "Where am I going with this", background: "navy", resizable: "true"

get :width

s = Square.new
t = Triangle.new(
  x1: 320, y1: 50,
  x2: 540, y2: 430,
  x3: 100, y3: 430,
)

t2 = Triangle.new(
  x1: 420, y1: 150,
  x2: 640, y2: 530,
  x3: 200, y3: 530,
)

s.color = ["blue", "green", "red", "yellow"]
t.color = ["red", "green", "blue"]
t2.color = ["blue", "red", "green"]

tick = 0

update do
  if tick % 60 == 0
    set background: "random"
  end
  tick += 1
end

show
