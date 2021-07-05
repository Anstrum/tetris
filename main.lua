io.stdout:setvbuf('no')

require("Misc/generalVariables")
Menu = require("menu")
Game = require("Game/game")
Credits = require("credits")
Options = require("options")
DevMode = require("Misc/devMode")

function love.load()
	love.window.setMode(Screen.Width, Screen.Height)
	love.window.setTitle(Screen.Title)
	GameState.Swap("Menu")
end

function love.update(dt)
	Mouse.Update()
	if GameState.InMenu then
		Menu.Update(dt)
	end
		if GameState.InGame then
		Game.Update(dt)
	end
		if GameState.InOptions then
		Options.Update(dt)
	end
	if GameState.InCredits then
		Credits.Update(dt)
	end
	DevMode.Update()
end

function love.draw()
	if GameState.InMenu then
		Menu.Draw()
	end

	DevMode.Draw()
end

function love.keypressed(Key)
	DevMode.KeyPressed(Key)
end