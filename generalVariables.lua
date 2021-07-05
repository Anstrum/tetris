Screen = {}
	Screen.Width = 700
	Screen.Height = 700
	Screen.Ratio = 0.7
	Screen.Title = "Tetris World    By: AOS"

Mouse = {}
	Mouse.X = 0
	Mouse.Y = 0
	function Mouse.Update()
		Mouse.X = love.mouse.getX()
		Mouse.Y = love.mouse.getY()
	end

GameState = {}
	GameState.InMenu = false
	GameState.InGame = false
	GameState.InOption = false
	GameState.InCredits = false
	function GameState.Swap(State)
		if State == "Menu" then
			Menu.Load()
			GameState.Reset()
			GameState.InMenu = true
			return
		end
		if State == "Game" then

			return
		end
		if State == "Options" then

			return
		end
		if State == "Credits" then

			return
		end
	end
	function GameState.Reset()
		GameState.InMenu = false
		GameState.InGame = false
		GameState.InOption = false
		GameState.InCredits = false
	end