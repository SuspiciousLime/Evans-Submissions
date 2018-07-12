--[[
    PlayState Class
    Author: Evan Frankel
    esfbbmc@gmail.com
    The state that controls the click screen and unlocking the items
]]

PlayState = Class{__includes = BaseState}


function PlayState:init()
    self.clicks = 0
    self.timer = 0
    self.donut = Donut(1)
    self.soda = Donut(2)
    self.cookie = Donut(3)
    self.pie = Donut(4)
    self.cake = Donut(5)
end

function PlayState:update(dt)
    self.timer = self.timer + dt 

    if love.mouse.wasPressed(1) then
        self.clicks = self.clicks + 1
    end 

    self.donut:update(dt)
    self.donut:render()

    self.soda:update(dt)
    self.soda:render()

    self.cookie:update(dt)
    self.cookie:render()

    self.pie:update(dt)
    self.pie:render()

    self.cake:update(dt)
    self.cake:render()
end


function PlayState:render()

    love.graphics.setFont(smallFont)
    love.graphics.print('Clicks: ' .. tostring(self.clicks), 8, 8)

    self.donut:render()
    self.soda:render()
    self.cookie:render()
    self.pie:render()
    self.cake:render()
end

--[[
    Called when this state is transitioned to from another state.
]]
function PlayState:enter()
end

--[[
    Called when this state changes to another state.
]]
function PlayState:exit()
end

