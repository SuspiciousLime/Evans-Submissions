--[[
    Donut Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    Responsible for each icon you unlock by clicking
]]

Donut = Class{}

function Donut:init(p)
    self.clicks = 0
    self.thresh = 0
    if p == 1 then
        self.image = love.graphics.newImage('donut.png')
        self.x = 220
        self.y = 35
        self.thresh = 49
    else if p == 2 then
        self.image = love.graphics.newImage('soda.png')
        self.x = 36
        self.y = 22
        self.thresh = 9
    else if p == 3 then
        self.image = love.graphics.newImage('cookie.png')
        self.x = 140
        self.y = 40
        self.thresh = 19
    else if p == 4 then
        self.image = love.graphics.newImage('pie.png')
        self.x = 350
        self.y = 0
        self.thresh = 99
    else if p == 5 then
        self.image = love.graphics.newImage('cake.png')
        self.x = 156
        self.y = 110
        self.thresh = 499
    end


    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
end

end

end

end

end



function Donut:update(dt)
    if love.mouse.wasPressed(1) then
        self.clicks = self.clicks + 1
    end 
end

function Donut:render()
    if self.clicks > self.thresh then
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(self.image, self.x, self.y)
    else
        love.graphics.setColor(0, 0, 0)
        love.graphics.draw(self.image, self.x, self.y)
    end


    love.graphics.setColor(255, 255, 255)
end