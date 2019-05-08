function love.draw()
  love.graphics.setColor(0, 0, 1)
  love.graphics.rectangle("fill", 100, 100, 100, 200)

  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", 200, 100, 100, 200)

  love.graphics.setColor(1, 0, 0)
  love.graphics.rectangle("fill", 300, 100, 100, 200)
end
