-- Computação gráfica e callbacks do framework

    -- aviao_14bis
    aviao_14bis {
        src = "img/nave.png",
        largura = 64,
        altura = 64,
        x = 0,
        y = 0,
    }

    function move14bis()
        if love.keyboard.isDown('w') then
            aviao_14bis.y = aviao_14bis.y -1
        end
    
        if love.keyboard.isDown('s') then
            aviao_14bis.y = aviao_14bis.y +1
        end
    
        if love.keyboard.isDown('a') then
            aviao_14bis.x = aviao_14bis.x -1
        end
    
        if love.keyboard.isDown('d') then
            aviao_14bis.x = aviao_14bis.x +1
        end
    end

-- Carrega alguns valores padrão para nosso retângulo.
function love.load()
    love.window.setMode(320, 480, {resizable = false})
    love.windiw.setTitle("14bis Vs Meteoros")

    background = love.graphics.newImage("img/background.png")
    aviao_14bis.imagem = love.graphics.newImage(aviao_14bis.src)

    -- x, y, w, h = 20, 20, 60, 20
end

-- Aumenta o tamanho do retângulo a cada frame.gle.
function love.update(dt)
    if love.keyboard.isDown('w','a','s','d') then
        move14bis()
    end
end

-- Desenhe um retângulo colorido.
function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(aviao_14bis.image, aviao_14bis.x, aviao_14bis.y)

    -- love.graphics.setColor(0, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
end
