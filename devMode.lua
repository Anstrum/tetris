DevMode = {}

	DevMode.Activated = false
	DevMode.ToggleKey = "f9"



	function DevMode.Update()
		return
	end



	function DevMode.KeyPressed(Key)
		if Key == DevMode.ToggleKey then
			DevMode.Activated = not DevMode.Activated
		end
	end



	function DevMode.Draw()
		if DevMode.Activated then
			love.graphics.setColor(0, 0, 0, 0.7)
			love.graphics.print("Mouse X:"..Mouse.X.." | Mouse Y:"..Mouse.Y, 5, 5, 0, 1.5, 1.5)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

return DevMode