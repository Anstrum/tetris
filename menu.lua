Menu = {}
<<<<<<< HEAD

	Menu.Speed = 1.08

	Menu.Buttons = {}

	Menu.Background = nil
	Menu.Title = nil
	Menu.AOSLogo = nil
	Menu.YnovLogo = nil
	Menu.Music = nil

=======
	require("MenuButtons")
	Menu.Buttons = {}

>>>>>>> f3fb8e73a4504e695644a5378e7c31cdd8e97765

	function Menu.Load()
		Menu.Speed = 0.8
		Menu.Background = love.graphics.newImage("Pictures/Menu/Background.png")
		Menu.Title = love.graphics.newImage("Pictures/Menu/Title.png")
		Menu.AOSLogo = love.graphics.newImage("Pictures/Menu/Title.png")
		Menu.YnovLogo = love.graphics.newImage("Pictures/Menu/YnovLogo.png")
		Menu.Music = love.audio.newSource("Sounds/MenuTheme.mp3", "stream")

		Menu.Music:setVolume(0.8)
		Menu.Music:setLooping(true)
		Menu.Music:setPitch(Menu.Speed)
		Menu.Music:play()

		Menu.InitButtons()
	end



	function Menu.Update(dt)
	end


	function Menu.InitButtons()
		Menu.Buttons[0] = AddButton("Play", "")
	end

	function Menu.Reset()
		Menu.Buttons = {}
	end

	function Menu.Draw()
		--Main Pictures--
		love.graphics.setColor(1, 1, 1)
		love.graphics.draw(Menu.Background, 0, 0, 0, Screen.Ratio, Screen.Ratio)
		love.graphics.draw(Menu.Title, Screen.Width / 2 - (Menu.Title:getWidth() / 2) * Screen.Ratio * 0.7, Screen.Height * 0.05, 0, Screen.Ratio * 0.7, Screen.Ratio * 0.7)
		love.graphics.draw(Menu.YnovLogo, Screen.Width * 0.02, (Screen.Height - Screen.Height * 0.02) - (Menu.YnovLogo:getHeight() * Screen.Ratio * 0.8), 0, Screen.Ratio * 0.8, Screen.Ratio * 0.8)
	
		--Buttons--

		--ButtonTexts--
	end

return Menu