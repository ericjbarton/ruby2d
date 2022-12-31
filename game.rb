require "ruby2d"

set width: 800, height: 600, title: "Where am I going with this"

s = Square.new
t = Triangle.new(
 # x1: 320, y1: 50,
   # x2: 540, y2: 430,
   # x3: 100, y3: 430,
  )

s.color = "blue"
t.color = ["red", "green", "blue"]
show
