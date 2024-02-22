-- Computação gráfica e callbacks do framework

-- Carrega alguns valores padrão para nosso retângulo.
function love.load()
    love.window.setMode(320, 480, {resizable = false})
    love.windiw.setTitle("14bis Vs Meteoros")

    background = love.graphics.newImage("img/background.png")

    x, y, w, h = 20, 20, 60, 20
end

-- Aumenta o tamanho do retângulo a cada frame.gle.
function love.update(dt)
    if love.keyboard.isDown('w') then
        y = y -1
    end

    if love.keyboard.isDown('s') then
        y = y +1
    end

    if love.keyboard.isDown('a') then
        y = x -1
    end

    if love.keyboard.isDown('d') then
        y = y +1
    end
end

-- Desenhe um retângulo colorido.
function love.draw()
    love.graphics.draw(0, 0)

    -- love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end
