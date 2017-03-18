local quarry = function(length, width, depth)

  local mineRow = function()
    turtle.digDown()
    turtle.down()
    for i = 1, (length - 1) do
      turtle.dig()
      turtle.forward()
    end
    for i = 1, (length - 1) do
      turtle.back()
    end
  end

  local mineSlice = function()
    for i = 1, (depth - 1) do
      mineRow()
    end
    for i = 1, (depth - 1) do
      turtle.up()
    end
  end

  for i = 1, (width - 1) do
    mineSlice()
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
  end

  turtle.turnRight()
  for i = 1, (width - 1) do
    turtle.forward()
  end
  turtle.turnLeft()

end

-- Get args from CC console
local args = { ... }

quarry(
  tonumber(args[1]),
  tonumber(args[2]),
  tonumber(args[3])
)

