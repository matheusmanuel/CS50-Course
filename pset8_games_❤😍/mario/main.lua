WINDOW_WIDTH = 1280
WINDOW_HEIGTH = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGTH = 243

Class = require 'class'
push = require 'push'

require 'util'
require 'Map'


function love.load()
    map = Map()

    love.graphics.setDefaultFilter('nearest', 'nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGTH, WINDOW_WIDTH, WINDOW_HEIGTH, {
        fullscreen = false,
        vsync = true,
        resizable = false
    })

end


function love.update(dt)
    map:update(dt)
end


function love.draw()
    push:apply('start')

    love.graphics.translate(math.floor(-map.camX), math.floor(-map.camY))

    love.graphics.clear(108/255, 140/255, 1, 1)

    map:render()
    
    push:apply('end')
end


