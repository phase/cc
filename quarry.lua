local quarry = function(length, width, depth)

  local mineRow = function()
    turtle.digDown()
    turtle.down()
    for i=1,length do
      turtle.dig()
      turtle.forward()
    end
    for i=1,length do
      turtle.back()
    end
  end

  local mineSlice = function()
    for i=1,depth do
      mineRow()
    end
    for i=1,depth do
      turtle.up()
    end
  end

  for i=1,width do
    mineSlice()
    turtle.left()
  end

end

-- Get args from CC console
local args = { ... }

quarry(
  tonumber(args[1]),
  tonumber(args[2]),
  tonumber(args[3])
)

