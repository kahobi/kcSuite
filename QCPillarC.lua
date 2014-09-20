dofile("QCVar.lua")


--Starting location, middle block of end of last section

if (NumSect >= 2) then
	turtle.select(SmokedQ)
	for i = 1 , (NumSect-1) do
		for i = 1 , SectDim do
			turtle.forward()
		end

		turtle.turnLeft()
		turtle.forward()
		turtle.forward()
		turtle.forward()

		for i = 1 , SectDim do --left pillar
			turtle.placeDown()
			turtle.up()
		end
	
		for i = 1 , SectDim do
			turtle.back()
		end

		for i = 1 , SectDim do
			turtle.down()
		end

		for i = 1 , SectDim do --Right Pillar
			turtle.placeDown()
			turtle.up()
		end

		turtle.forward()
		turtle.forward()
		turtle.forward()
		turtle.turnRight()

		for i = 1 , SectDim do
			turtle.down()
		end
	end
--	
--	Facade at the End
	for i = 1 , SectDim do
		turtle.forward()
	end

	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.forward()

	for i = 1 , SectDim do
		turtle.placeDown()
		turtle.up()
	end

	for i = 1 , SectDim do
		turtle.back()
	end

	for i = 1 , SectDim do
		turtle.down()
	end

	turtle.select(SmokedF)
	for i = 1 , SectDim do
		turtle.placeDown()
		if MENetwork then
			turtle.select(IOMECon)
			turtle.placeDown()
		end
		if EnNetwork then
			turtle.select(IOEnCon)
			turtle.placeDown()
		end
	turtle.up()
	end

	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()

	for i = 1 , SectDim do
		turtle.down()
	end

	for i = 1 , NumSect do
		for i = 1 , SectDim do
			turtle.back()
		end
	end
end